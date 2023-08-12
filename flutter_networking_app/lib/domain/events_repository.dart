import 'package:flutter_networking_app/api/events/events_api.dart';
import 'package:flutter_networking_app/domain/model/event.dart';
import 'package:flutter_networking_app/domain/model/event_sorting.dart';
import 'package:flutter_networking_app/domain/model/event_summary.dart';

class EventsRepository {
  const EventsRepository(this._api);

  final EventsApi _api;

  Future<List<EventSummary>> getEvents(EventSorting sort) async {
    final response = await _api.getEvents(sort);
    return response.data;
  }

  Future<Event> getEvent(String id) async {
    final response = await _api.getEvent(id);
    return response.data;
  }
}
