import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dartx/dartx.dart';
import 'package:data_source/events.dart';

import '../../utils/create_response.dart';
import '../../utils/ensure_api_key_header.dart';
import '../../utils/ensure_auth_header.dart';
import '../../utils/ensure_request_method.dart';

Future<Response> onRequest(RequestContext context) async {
  final request = context.request;

  return ensureRequestMethod(request, HttpMethod.post) ??
      ensureApiKeyHeader(request) ??
      ensureAuthHeader(request) ??
      await _createResponse(request);
}

Future<Response> _createResponse(Request request) async {
  final bodyJson = await request.json() as Map<String, dynamic>;
  final eventId = bodyJson['eventId'] as String?;
  if (eventId == null) {
    return Response(
      statusCode: HttpStatus.badRequest,
      body: '"eventId" value is missing in request body',
    );
  }
  final event = events.firstOrNullWhere((e) => e.id == eventId);
  if (event == null) {
    return Response(
      statusCode: HttpStatus.notFound,
      body: 'No event with id "$eventId" found.',
    );
  }
  final userName = request.headers['auth'];
  final json = {
    'message': '$userName, thanks for showing your interest '
        'in sponsoring ${event.name}',
  };
  return createResponse(json);
}
