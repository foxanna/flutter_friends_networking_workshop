import 'package:dart_frog/dart_frog.dart';

const _workshopName = 'Basic and advanced networking in Dart and Flutter';

Response onRequest(RequestContext context) =>
    Response(body: 'Welcome to the "$_workshopName" workshop!');
