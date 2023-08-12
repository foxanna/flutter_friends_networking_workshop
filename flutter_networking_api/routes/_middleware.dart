import 'package:dart_frog/dart_frog.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart';

Handler middleware(Handler handler) => handler
    // .use(requestLogger())
    .use(
      fromShelfMiddleware(
        corsHeaders(
          headers: {
            ACCESS_CONTROL_ALLOW_ORIGIN: '*',
            ACCESS_CONTROL_ALLOW_HEADERS: '*',
            ACCESS_CONTROL_ALLOW_METHODS: '*',
            ACCESS_CONTROL_ALLOW_CREDENTIALS: 'true',
          },
        ),
      ),
    );
