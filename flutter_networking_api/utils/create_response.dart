import 'package:dart_frog/dart_frog.dart';

Response createResponse(Object data) => Response.json(
      body: <String, dynamic>{
        'data': data,
        'timestamp': DateTime.timestamp().toIso8601String(),
      },
    );
