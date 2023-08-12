import 'package:flutter_networking_app/domain/model/event_type.dart';

class EventSummaryPODO {
  const EventSummaryPODO({
    required this.id,
    required this.name,
    required this.type,
    required this.image,
    required this.startDate,
    required this.endDate,
  });

  final String id;
  final String name;
  final EventType type;
  final String? image;
  final DateTime? startDate;
  final DateTime? endDate;
}
