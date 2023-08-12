import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dartx/dartx.dart';
import 'package:data_source/events.dart';

import '../../utils/create_response.dart';
import '../../utils/ensure_api_key_header.dart';
import '../../utils/ensure_request_method.dart';
import '../../utils/relative_to_absolute_image_path.dart';

Response onRequest(RequestContext context, String id) {
  final request = context.request;

  return ensureRequestMethod(request, HttpMethod.get) ??
      ensureApiKeyHeader(request) ??
      _createResponse(request, id);
}

Response _createResponse(Request request, String id) {
  final event = events
      .firstOrNullWhere((e) => e.id == id)
      ?.changeRelativeImagePathToAbsolute(request.uri.origin);
  if (event == null) {
    return Response(
      statusCode: HttpStatus.notFound,
      body: 'No event with id "$id" found.',
    );
  }

  final json = event.toJson();
  return createResponse(_maybeUpdateEventJson(json));
}

Map<String, dynamic> _maybeUpdateEventJson(Map<String, dynamic> json) {
  if (json['id'] == '7') {
    json['type'] = 'WORKSHOP';
  }
  if (json['id'] == '4') {
    final details = json['details'] as Map<String, dynamic>;
    final location = details['location'] as Map<String, dynamic>;
    location['type'] = 'Zoom';
  }
  return json;
}
