import 'package:flutter_networking_app/api/events/mapper/event_location_mapper.dart';
import 'package:flutter_networking_app/api/events/model/api_event_details.dart';
import 'package:flutter_networking_app/domain/model/event_details.dart';

extension ApiEventDetailsX on ApiEventDetails {
  EventDetails toModel() => switch (this) {
        AnnouncedApiEventDetails apiModel => apiModel.toModel(),
        NotAnnouncedApiEventDetails apiModel => apiModel.toModel(),
        UnknownApiEventDetails apiModel => apiModel.toModel(),
      };
}

extension AnnouncedApiEventDetailsX on AnnouncedApiEventDetails {
  AnnouncedEventDetails toModel() => AnnouncedEventDetails(
        description: description,
        startDate: startDate,
        endDate: endDate,
        location: location.toModel(),
      );
}

extension NotAnnouncedApiEventDetailsX on NotAnnouncedApiEventDetails {
  NotAnnouncedEventDetails toModel() => NotAnnouncedEventDetails(
        description: description,
      );
}

extension UnknownApiEventDetailsX on UnknownApiEventDetails {
  UnknownEventDetails toModel() => const UnknownEventDetails();
}
