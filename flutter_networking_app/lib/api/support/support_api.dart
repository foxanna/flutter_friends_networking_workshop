import 'package:dio/dio.dart';
import 'package:flutter_networking_app/api/core/marker/authenticated_request_marker.dart';
import 'package:flutter_networking_app/api/core/model/api_response.dart';
import 'package:flutter_networking_app/api/support/model/support_request.dart';
import 'package:flutter_networking_app/api/support/model/support_response.dart';
import 'package:retrofit/retrofit.dart';

part 'support_api.g.dart';

@RestApi()
abstract class SupportApi {
  factory SupportApi(Dio dio) = _SupportApi;

  @authenticatedRequest
  @POST('/support/speak')
  Future<ApiResponse<SupportResponse>> applyToSpeak(
    @Body() SupportRequest request,
  );

  @authenticatedRequest
  @POST('/support/sponsor')
  Future<ApiResponse<SupportResponse>> applyToSponsor(
    @Body() SupportRequest request,
  );
}
