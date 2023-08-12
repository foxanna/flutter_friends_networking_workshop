import 'package:dartx/dartx.dart';
import 'package:dio/dio.dart';
import 'package:flutter_networking_app/api/core/manager/api_key_manager.dart';

class AppendApiKeyInterceptor extends Interceptor {
  const AppendApiKeyInterceptor(this._apiKeyManager);

  final ApiKeyManager _apiKeyManager;

  static const _headerName = 'apikey';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final apiKey = _apiKeyManager.apiKey;

    if (apiKey.isNotNullOrEmpty) {
      return handler.next(options..headers[_headerName] = apiKey);
    } else {
      return handler.reject(
        DioException(
          requestOptions: options,
          error: Exception('$_headerName is empty'),
        ),
      );
    }
  }
}
