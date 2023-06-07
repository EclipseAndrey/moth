import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:moth/features/discovery_test/data/discovery_service/discovery_service.dart';
import 'package:moth/features/discovery_test/presentation/state/discovery_bloc/discovery_models.dart';

@injectable
class DiscoveryBloc extends Bloc<DiscoveryEvent, DiscoveryState> {
  final Logger _logger;
  final IDiscoveryService discoveryService;

  DiscoveryBloc(
    this.discoveryService,
    this._logger,
  ) : super(const DiscoveryState.initial()) {
    on<SearchDiscovery>(_search);
  }

  FutureOr<void> _search(
    SearchDiscovery event,
    Emitter<DiscoveryState> emit,
  ) async {
    emit(const DiscoveryState.loading(devices: []));
    final result = await discoveryService.discoverDevices();
    emit(DiscoveryState.success(devices: result));
  }
}
