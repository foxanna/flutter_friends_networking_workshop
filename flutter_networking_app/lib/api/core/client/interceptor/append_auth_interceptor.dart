import 'package:dartx/dartx.dart';
import 'package:dio/dio.dart';
import 'package:flutter_networking_app/api/core/manager/auth_data_manager.dart';
import 'package:flutter_networking_app/api/core/marker/authenticated_request_marker.dart';

class AppendAuthInterceptor extends Interceptor {
  const AppendAuthInterceptor(this._authDataManager);

  final AuthDataManager _authDataManager;

  static const _headerName = 'auth';

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final appendAuthHeader =
        (options.extra[authenticatedRequestExtraKey] as bool?) ?? false;

    if (!appendAuthHeader) {
      return super.onRequest(options, handler);
    }

    final authData = await _authDataManager.authData;
    if (authData.isNotNullOrEmpty) {
      return handler.next(options..headers[_headerName] = authData);
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
