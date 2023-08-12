import 'package:flutter_networking_app/domain/model/event_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_summary.freezed.dart';

@freezed
class EventSummary with _$EventSummary {
  const factory EventSummary({
    required String id,
    required String name,
    required EventType type,
    required Uri? image,
    required DateTime? startDate,
    required DateTime? endDate,
  }) = _EventSummary;
}
