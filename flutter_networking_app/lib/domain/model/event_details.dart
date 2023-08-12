import 'package:flutter_networking_app/domain/model/event_location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_details.freezed.dart';
part 'event_details.g.dart';

@Freezed(fallbackUnion: 'unknown')
class EventDetails with _$EventDetails {
  const factory EventDetails.announced({
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required EventLocation location,
  }) = AnnouncedEventDetails;

  const factory EventDetails.notAnnounced({
    required String? description,
  }) = NotAnnouncedEventDetails;

  const factory EventDetails.unknown() = UnknownEventDetails;

  factory EventDetails.fromJson(Map<String, dynamic> json) =>
      _$EventDetailsFromJson(json);
}
