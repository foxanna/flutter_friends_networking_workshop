import 'package:flutter_networking_app/api/events/model/api_event_summary.dart';
import 'package:flutter_networking_app/domain/model/event_summary.dart';

extension ApiEventSummaryX on ApiEventSummary {
  EventSummary toModel() => EventSummary(
        id: id,
        name: name,
        type: type,
        image: image,
        startDate: startDate,
        endDate: endDate,
      );
}
