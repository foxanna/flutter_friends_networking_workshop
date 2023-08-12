import 'package:dio/dio.dart';
import 'package:flutter_networking_app/api/core/model/api_response.dart';
import 'package:flutter_networking_app/domain/model/event.dart';
import 'package:flutter_networking_app/domain/model/event_sorting.dart';
import 'package:flutter_networking_app/domain/model/event_summary.dart';
import 'package:retrofit/retrofit.dart';

part 'events_api.g.dart';

@RestApi()
abstract class EventsApi {
  factory EventsApi(Dio dio) = _EventsApi;

  @GET('/events')
  Future<ApiResponse<List<EventSummary>>> getEvents(
    @Query('sort') EventSorting sort,
  );

  @GET('/events/{id}')
  Future<ApiResponse<Event>> getEvent(@Path('id') String id);
}
