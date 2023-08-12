import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_location.freezed.dart';
part 'event_location.g.dart';

@Freezed(unionKey: 'type', fallbackUnion: 'unknown')
class EventLocation with _$EventLocation {
  @FreezedUnionValue('online')
  const factory EventLocation.online({
    required String streamUrl,
  }) = OnlineEventLocation;

  @FreezedUnionValue('in-person')
  const factory EventLocation.inPerson({
    required String address,
  }) = InPersonEventLocation;

  @FreezedUnionValue('hybrid')
  const factory EventLocation.hybrid({
    required String address,
    required String streamUrl,
  }) = HybridEventLocation;

  const factory EventLocation.unknown() = UnknownEventLocation;

  factory EventLocation.fromJson(Map<String, dynamic> json) =>
      _$EventLocationFromJson(json);
}
