import 'package:freezed_annotation/freezed_annotation.dart';

part 'discovery_models.freezed.dart';

@freezed
class DiscoveryEvent with _$DiscoveryEvent {
  const factory DiscoveryEvent.search() = SearchDiscovery;
}

@freezed
class DiscoveryState with _$DiscoveryState {
  const factory DiscoveryState.initial() = InitialDiscovery;
  const factory DiscoveryState.success({required List<Map<String, String>> devices}) = SuccessDiscovery;
  const factory DiscoveryState.error(String error) = ErrorDiscovery;
  const factory DiscoveryState.loading({required List<Map<String, String>> devices}) = LoadingDiscovery;
}
