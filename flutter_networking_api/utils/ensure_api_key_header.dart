import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

const _apiKeyHeaderName = 'apikey';
const _apiKeyHeaderValue = 'flutter_networking_workshop';

Response? ensureApiKeyHeader(Request request) {
  if (request.headers[_apiKeyHeaderName] != _apiKeyHeaderValue) {
    return Response(
      statusCode: HttpStatus.unauthorized,
      body: '"$_apiKeyHeaderName" header with '
          '"$_apiKeyHeaderValue" value is required.',
    );
  }

  return null;
}
