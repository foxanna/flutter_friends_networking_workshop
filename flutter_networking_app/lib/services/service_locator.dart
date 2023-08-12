import 'package:flutter_networking_app/api/core/client/dio.dart';
import 'package:flutter_networking_app/api/core/client/interceptor/append_api_key_interceptor.dart';
import 'package:flutter_networking_app/api/core/client/interceptor/append_auth_interceptor.dart';
import 'package:flutter_networking_app/api/core/manager/auth_data_manager.dart';
import 'package:flutter_networking_app/api/events/events_api.dart';
import 'package:flutter_networking_app/api/core/manager/api_key_manager.dart';
import 'package:flutter_networking_app/api/support/support_api.dart';
import 'package:flutter_networking_app/domain/events_repository.dart';
import 'package:flutter_networking_app/domain/support_repository.dart';

final serviceLocator = ServiceLocator._();

class ServiceLocator {
  ServiceLocator._();

  final _dio = createDio(
    AppendApiKeyInterceptor(ApiKeyManager()),
    AppendAuthInterceptor(AuthDataManager()),
  );

  EventsRepository get eventsRepository => EventsRepository(
        EventsApi(_dio),
      );

  SupportRepository get supportRepository => SupportRepository(
        SupportApi(_dio),
      );
}
