import 'package:dio/dio.dart';
import 'package:flutter_networking_app/api/core/client/base_url.dart';
import 'package:flutter_networking_app/api/core/client/interceptor/append_api_key_interceptor.dart';
import 'package:flutter_networking_app/api/core/client/interceptor/append_auth_interceptor.dart';

Dio createDio(
  AppendApiKeyInterceptor appendApiKeyInterceptor,
  AppendAuthInterceptor appendAuthInterceptor,
) =>
    Dio(
      BaseOptions(baseUrl: baseUrl),
    )..interceptors.addAll([
        appendApiKeyInterceptor,
        appendAuthInterceptor,
      ]);
