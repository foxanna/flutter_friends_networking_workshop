import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_location.freezed.dart';

@freezed
class EventLocation with _$EventLocation {
  const factory EventLocation.online({
    required String streamUrl,
  }) = OnlineEventLocation;

  const factory EventLocation.inPerson({
    required String address,
  }) = InPersonEventLocation;

  const factory EventLocation.hybrid({
    required String address,
    required String streamUrl,
  }) = HybridEventLocation;

  const factory EventLocation.unknown() = UnknownEventLocation;
}
