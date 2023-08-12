import 'package:dio/dio.dart';
import 'package:flutter_networking_app/api/core/manager/api_key_manager.dart';
import 'package:flutter_networking_app/api/events/model/api_event.dart';
import 'package:flutter_networking_app/api/events/model/api_event_summary.dart';
import 'package:flutter_networking_app/api/core/model/api_response.dart';

class EventsApi {
  const EventsApi(
    this._dio,
    this._apiKeyManager,
  );

  final Dio _dio;
  final ApiKeyManager _apiKeyManager;

  Future<ApiResponse<List<ApiEventSummary>>> getEvents(String sort) async {
    final apiKey = _apiKeyManager.apiKey;
    final response = await _dio.get<Map<String, dynamic>>(
      '/events',
      queryParameters: {'sort': sort},
      options: Options(headers: {'apikey': apiKey}),
    );
    final value = ApiResponse<List<ApiEventSummary>>.fromJson(
      response.data!,
      (json) => (json as List)
          .map((e) => ApiEventSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
    return value;
  }

  Future<ApiResponse<ApiEvent>> getEvent(String id) async {
    final apiKey = _apiKeyManager.apiKey;
    final response = await _dio.get<Map<String, dynamic>>(
      '/events/$id',
      options: Options(headers: {'apikey': apiKey}),
    );
    final value = ApiResponse<ApiEvent>.fromJson(
      response.data!,
      (json) => ApiEvent.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }
}
