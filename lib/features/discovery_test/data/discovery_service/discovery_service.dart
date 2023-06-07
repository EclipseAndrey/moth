import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

abstract class IDiscoveryService {
  Future<List<Map<String, String>>> discoverDevices({Duration timeout = const Duration(milliseconds: 5000)});
}

@Singleton(as: IDiscoveryService)
class DiscoveryService extends IDiscoveryService {
  final Logger logger;
  DiscoveryService(this.logger);

  @override
  Future<List<Map<String, String>>> discoverDevices({Duration timeout = const Duration(milliseconds: 5000)}) async {
    final List<Map<String, String>> devices = [];

    // SSDP M-SEARCH запрос
    const String ssdpRequest = 'M-SEARCH * HTTP/1.1\r\n'
        'HOST: 239.255.255.250:1900\r\n'
        'MAN: "ssdp:discover"\r\n'
        'MX: 3\r\n'
        'ST: ssdp:all\r\n\r\n';

    // сокет для отправки запроса и получения ответов
    final RawDatagramSocket socket = await RawDatagramSocket.bind(InternetAddress.anyIPv4, 0);
    socket.multicastHops = 1;
    socket.broadcastEnabled = true;
    socket.readEventsEnabled = true;

    // SSDP M-SEARCH запрос
    final List<int> data = utf8.encode(ssdpRequest);
    final int bytesSent = socket.send(data, InternetAddress('239.255.255.250'), 1900);

    if (bytesSent != data.length) {
      logger.i('Не удалось отправить запрос.');
      socket.close();
      return [];
    }

    // ответы на SSDP M-SEARCH запрос
    final receiveDone = Completer<void>();
    final receiveTimer = Timer(timeout, () {
      receiveDone.complete();
    });

    socket.listen((RawSocketEvent event) {
      if (event == RawSocketEvent.read) {
        final Datagram? datagram = socket.receive();
        if (datagram != null) {
          final response = _parseSsdpResponse(utf8.decode(datagram.data));
          final hasDevice = devices.firstWhereOrNull((element) => element['LOCATION'] == response['LOCATION']) != null;
          if (!hasDevice) {
            print(response);
            devices.add(response);
          }
        }
      }
    });

    // Ожидание завершения поиска
    await receiveDone.future;

    // Завершение работы с сокетом
    receiveTimer.cancel();
    socket.close();
    return devices;
  }

  Map<String, String> _parseSsdpResponse(String response) {
    Map<String, String> result = {};
    response.split('\r\n').forEach((line) {
      if (line.isNotEmpty) {
        List<String> parts = line.split(':');
        if (parts.length >= 2) {
          String key = parts[0].trim();
          String value = parts.sublist(1).join(':').trim();
          result[key] = value;
        }
      }
    });
    return result;
  }
}
