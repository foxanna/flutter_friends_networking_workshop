import 'package:flutter_networking_app/api/core/converter/date_time_to_dashed_string_converter.dart';
import 'package:flutter_networking_app/domain/model/event_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_summary.freezed.dart';
part 'event_summary.g.dart';

@freezed
class EventSummary with _$EventSummary {
  const factory EventSummary({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'type', unknownEnumValue: EventType.unknown)
    @Default(EventType.unknown)
    EventType type,
    @JsonKey(name: 'imageUrl') required Uri? image,
    @JsonKey(name: 'startDate')
    @DateTimeToDashedStringConverter()
    required DateTime? startDate,
    @JsonKey(name: 'endDate')
    @dateTimeToDashedStringConverter
    required DateTime? endDate,
  }) = _EventSummary;

  factory EventSummary.fromJson(Map<String, dynamic> json) =>
      _$EventSummaryFromJson(json);
}
