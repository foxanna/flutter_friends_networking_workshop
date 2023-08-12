import 'package:data_source/converters/datetime_to_string_converter.dart';
import 'package:data_source/models/event.dart';
import 'package:data_source/models/event_details.dart';
import 'package:data_source/models/event_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_summary.g.dart';

@JsonSerializable()
class EventSummary {
  const EventSummary({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.type,
    required this.startDate,
    required this.endDate,
  });

  final String id;
  final String name;
  final String? imageUrl;
  final EventType type;
  @DateTimeToStringConverter()
  final DateTime? startDate;
  @DateTimeToStringConverter()
  final DateTime? endDate;

  factory EventSummary.fromEvent(Event event) => EventSummary(
        id: event.id,
        name: event.name,
        imageUrl: event.imageUrl,
        type: event.type,
        startDate: event.details is AnnouncedEventDetails
            ? (event.details as AnnouncedEventDetails).startDate
            : null,
        endDate: event.details is AnnouncedEventDetails
            ? (event.details as AnnouncedEventDetails).endDate
            : null,
      );

  factory EventSummary.fromJson(Map<String, dynamic> json) =>
      _$EventSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$EventSummaryToJson(this);
}
