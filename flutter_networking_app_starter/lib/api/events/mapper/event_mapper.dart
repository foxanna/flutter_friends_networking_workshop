import 'package:flutter_networking_app/api/events/mapper/event_details_mapper.dart';
import 'package:flutter_networking_app/api/events/model/api_event.dart';
import 'package:flutter_networking_app/domain/model/event.dart';

extension ApiEventX on ApiEvent {
  Event toModel() => Event(
        id: id,
        name: name,
        image: image,
        website: website,
        type: type,
        details: details.toModel(),
      );
}
