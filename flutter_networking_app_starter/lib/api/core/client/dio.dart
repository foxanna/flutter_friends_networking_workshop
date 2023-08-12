import 'package:dio/dio.dart';
import 'package:flutter_networking_app/api/core/client/base_url.dart';

Dio createDio() => Dio(
      BaseOptions(baseUrl: baseUrl),
    );
