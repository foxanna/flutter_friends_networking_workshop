import 'package:flutter_networking_app/domain/model/event_location.dart';

abstract class EventDetailsPODO {}

class AnnouncedEventDetailsPODO implements EventDetailsPODO {
  const AnnouncedEventDetailsPODO({
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.location,
  });

  final String description;
  final DateTime startDate;
  final DateTime endDate;
  final EventLocation location;
}

class NotAnnouncedEventDetailsPODO implements EventDetailsPODO {
  const NotAnnouncedEventDetailsPODO({
    required this.description,
  });

  final String? description;
}

class UnknownEventDetailsPODO implements EventDetailsPODO {
  const UnknownEventDetailsPODO();
}
