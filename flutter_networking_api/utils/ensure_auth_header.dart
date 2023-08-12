import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dartx/dartx.dart';

const _apiKeyHeaderName = 'auth';

Response? ensureAuthHeader(Request request) {
  if (request.headers[_apiKeyHeaderName].isNullOrEmpty) {
    return Response(
      statusCode: HttpStatus.unauthorized,
      body: '"$_apiKeyHeaderName" header with a user name is required.',
    );
  }

  return null;
}
