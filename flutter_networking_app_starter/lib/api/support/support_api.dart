import 'package:dio/dio.dart';
import 'package:flutter_networking_app/api/core/manager/api_key_manager.dart';
import 'package:flutter_networking_app/api/core/manager/auth_data_manager.dart';
import 'package:flutter_networking_app/api/core/model/api_response.dart';
import 'package:flutter_networking_app/api/support/model/support_request.dart';
import 'package:flutter_networking_app/api/support/model/support_response.dart';

class SupportApi {
  const SupportApi(
    this._dio,
    this._apiKeyManager,
    this._authDataManager,
  );

  final Dio _dio;
  final ApiKeyManager _apiKeyManager;
  final AuthDataManager _authDataManager;

  Future<ApiResponse<SupportResponse>> applyToSpeak(
    SupportRequest request,
  ) async {
    final apiKey = _apiKeyManager.apiKey;
    final authData = await _authDataManager.authData;

    final response = await _dio.post<Map<String, dynamic>>(
      '/support/speak',
      data: request.toJson(),
      options: Options(
        headers: {
          'apikey': apiKey,
          'auth': authData,
        },
      ),
    );
    final value = ApiResponse<SupportResponse>.fromJson(
      response.data!,
      (json) => SupportResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  Future<ApiResponse<SupportResponse>> applyToSponsor(
    SupportRequest request,
  ) async {
    final apiKey = _apiKeyManager.apiKey;
    final authData = await _authDataManager.authData;

    final response = await _dio.post<Map<String, dynamic>>(
      '/support/sponsor',
      data: request.toJson(),
      options: Options(
        headers: {
          'apikey': apiKey,
          'auth': authData,
        },
      ),
    );
    final value = ApiResponse<SupportResponse>.fromJson(
      response.data!,
      (json) => SupportResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }
}
