<details>
<summary>Change #0</summary>

During the workshop, the backend is hosted. Visit https://github.com/foxanna and copy the link from the profile bio to `base_url.dart` file.

At all other times, run your local instance of the backend as described [here](../flutter_networking_api/README.md).

</details>

<details>
<summary>Change #1</summary>

Add new dependencies in `pubspec.yaml` file: 

```yaml
dependencies:
  ...
  json_annotation: 4.8.1

dev_dependencies:
  ...
  json_serializable: 6.7.1
```

Perform `pub get`.
</details>

<details>
<summary>Change #2</summary>

In the `event_summary.dart` file, add a new `part` file below imports list:

```dart
part 'event_summary.g.dart';
```

Add a new `.fromJson` named constructor in the end of the `EventSummary` class:

```dart
@freezed
class EventSummary with _$EventSummary {
  ...
  factory EventSummary.fromJson(Map<String, dynamic> json) => 
      _$EventSummaryFromJson(json);
}
```

Run code generation with:

```shell
dart run build_runner build --delete-conflicting-outputs
```

</details>

<details>
<summary>Change #3</summary>

Add `analyzer:exclude` section to `analysis_options.yaml`:

```yaml
analyzer:
  exclude:
    - '**/*.g.dart'
    - '**/*.freezed.dart'
```

</details>

<details>
<summary>Change #4</summary>

In the `event_summary.dart` file, replace `image` field declaration with:

```dart
@JsonKey(name: 'imageUrl') required Uri? image,
```

Add `analyzer:errors` section to `analysis_options.yaml`:

```yaml
analyzer:
  ...

  errors:
    invalid_annotation_target: ignore
```

Run code generation in `watch` mode with:

```shell
dart run build_runner watch --delete-conflicting-outputs
```

</details>

<details>
<summary>Change #5</summary>

Create a new folder `api/core/converter` with a new file `date_time_to_dashed_string_converter.dart`:

```dart
import 'package:json_annotation/json_annotation.dart';

class DateTimeToDashedStringConverter extends JsonConverter<DateTime, String> {
  const DateTimeToDashedStringConverter();

  @override
  DateTime fromJson(String json) {
    final dates = json.split('-');
    return DateTime.utc(
      int.parse(dates[0]),
      int.parse(dates[1]),
      int.parse(dates[2]),
    );
  }

  @override
  String toJson(DateTime object) => '${object.year}'
      '-${_twoDigits(object.month)}'
      '-${_twoDigits(object.day)}';

  static String _twoDigits(int n) => n >= 10 ? '$n' : '0$n';
}
```

In the `event_summary.dart` file, replace `startDate` field declaration with:

```dart
@DateTimeToDashedStringConverter() required DateTime? startDate,
```

Fix missing import with:

```dart
import 'package:flutter_networking_app/api/core/converter/date_time_to_dashed_string_converter.dart';
```

In the `date_time_to_dashed_string_converter.dart` file, add `dateTimeToDashedStringConverter` global constant outside of `DateTimeToDashedStringConverter` class declaration:

```dart
const dateTimeToDashedStringConverter = DateTimeToDashedStringConverter();
```

In the `event_summary.dart` file, replace `endDate` field declaration with:

```dart
@dateTimeToDashedStringConverter required DateTime? endDate,
```

Create a new file `date_time_to_separated_string_converter.dart` next to the existing converter:

```dart
import 'package:json_annotation/json_annotation.dart';

class DateTimeToSeparatedStringConverter extends JsonConverter<DateTime, String> {
  const DateTimeToSeparatedStringConverter({
    required this.separator,
  });

  final String separator;

  @override
  DateTime fromJson(String json) {
    final dates = json.split(separator);
    return DateTime.utc(
      int.parse(dates[0]),
      int.parse(dates[1]),
      int.parse(dates[2]),
    );
  }

  @override
  String toJson(DateTime object) => '${object.year}'
      '$separator'
      '${_twoDigits(object.month)}'
      '$separator'
      '${_twoDigits(object.day)}';

  static String _twoDigits(int n) => n >= 10 ? '$n' : '0$n';
}
```

In the new `date_time_to_separated_string_converter.dart` file, add global constants outside of `DateTimeToSeparatedStringConverter` class declaration:

```dart
const dateTimeToDashedStringConverter = DateTimeToSeparatedStringConverter(separator: '-');

const dateTimeToSlashedStringConverter = DateTimeToSeparatedStringConverter(separator: '/');
```

</details>

<details>
<summary>Change #6</summary>

Update `event_type.dart` file to:

```dart
import 'package:json_annotation/json_annotation.dart';

enum EventType {
  unknown,
  @JsonValue('CONF')
  conference,
  @JsonValue('MEETUP')
  meetup,
  @JsonValue('DEV_FEST')
  devfest,
}
```

In the  `event_summary.dart` file, replace `type`  field declaration with:

```dart
@JsonKey(unknownEnumValue: EventType.unknown) required EventType type,
```

</details>

<details>
<summary>Change #7</summary>

In the  `event_summary.dart` file, replace `name`  field declaration with:

```dart
@Default('') String name,
```

and replace `type`  field declaration with:

```dart
@JsonKey(unknownEnumValue: EventType.unknown) 
@Default(EventType.unknown) 
EventType type,
```

</details>

<details>
<summary>Change #8</summary>

In the  `event_summary.dart` file, replace all fields declaration with:

```dart
@JsonKey(name: 'id') required String id,
@JsonKey(name: 'name') @Default('') String name,
@JsonKey(name: 'type', unknownEnumValue: EventType.unknown)
@Default(EventType.unknown)
EventType type,
@JsonKey(name: 'imageUrl') required Uri? image,
@JsonKey(name: 'startDate')
@DateTimeToDashedStringConverter()
required DateTime? startDate,
@JsonKey(name: 'endDate')
@dateTimeToDashedStringConverter
required DateTime? endDate,
```

</details>

<details>
<summary>Change #9</summary>

In the `events_api.dart` file, replace all usages of `ApiEventSummary` with `EventSummary`:

```dart
Future<ApiResponse<List<EventSummary>>> getEvents(String sort) async {
  ...
  final value = ApiResponse<List<EventSummary>>.fromJson(
      response.data!,
      (json) => (json as List)
          .map((e) => EventSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
  );
  ...
}
```

Fix import by adding:

```dart
import 'package:flutter_networking_app/domain/model/event_summary.dart';
```

and removing:

```dart
import 'package:flutter_networking_app/api/events/model/api_event_summary.dart';
```

In the `events_repository.dart` file, update the last line of the `getEvents` method to:

```dart
Future<List<EventSummary>> getEvents(EventSorting sort) async {
  ...
  return response.data;
}
```

And fix imports by removing:

```dart
import 'package:flutter_networking_app/api/events/mapper/event_summary_mapper.dart';
```

Now, `api_event_summary.dart` and `event_summary_mapper.dart` files can be deleted.

</details>

<details>
<summary>Change #10</summary>

In the `event_location.dart` file, add a new `part` file below imports list:

```dart
part 'event_location.g.dart';
```

Add a new `.fromJson` named constructor in the end of the `EventLocation` class:

```dart
@freezed
class EventLocation with _$EventLocation {
  ...
  factory EventLocation.fromJson(Map<String, dynamic> json) => 
      _$EventLocationFromJson(json);
}
```

</details>

<details>
<summary>Change #11</summary>

In the `event_location.dart` file, replace `@freezed` with:

```dart
@Freezed(unionKey: 'type')
class EventLocation with _$EventLocation {
  ...
}
```

And add `@FreezedUnionValue` above each named constructor:

```dart
@FreezedUnionValue('online')
const factory EventLocation.online({
  ...
}) = OnlineEventLocation;
```

```dart
@FreezedUnionValue('in-person')
const factory EventLocation.inPerson({
  ...
}) = InPersonEventLocation;
```

```dart
@FreezedUnionValue('hybrid')
const factory EventLocation.hybrid({
  ...
}) = HybridEventLocation;
```

Replace `@Freezed(unionKey: 'type')` with: 

```dart
@Freezed(unionKey: 'type', fallbackUnion: 'unknown')
class EventLocation with _$EventLocation {
  ...
}
```

</details>

<details>
<summary>Change #12</summary>

In the `api_event_details.dart` file, replace `ApiEventLocation` usages with `EventLocation`:

```dart
class AnnouncedApiEventDetails implements ApiEventDetails {
  ...

  final EventLocation location;

  factory AnnouncedApiEventDetails.fromJson(Map<String, dynamic> json) =>
      AnnouncedApiEventDetails(
        ...
        location: EventLocation.fromJson(json['location'] as Map<String, dynamic>),
      );
}
```

Replace `import` with:

```dart
import 'package:flutter_networking_app/domain/model/event_location.dart';
```

In the `event_details_mapper.dart` file, remove:

```dart
import 'package:flutter_networking_app/api/events/mapper/event_location_mapper.dart';
```

And update `AnnouncedApiEventDetailsX.toModel()` method:

```dart
extension AnnouncedApiEventDetailsX on AnnouncedApiEventDetails {
  AnnouncedEventDetails toModel() => AnnouncedEventDetails(
        ...
        location: location,
      );
}
```

Remove `api_event_location.dart` and `event_location_mapper.dart` files.

</details>

<details>
<summary>Change #13</summary>

In the `event_details.dart` file, add a new part file below imports list:

```dart
part 'event_details.g.dart';
```

Add a new `.fromJson` named constructor in the end of the `EventDetails` class:

```dart
@freezed
class EventDetails with _$EventDetails {
  ...
  factory EventDetails.fromJson(Map<String, dynamic> json) =>
      _$EventDetailsFromJson(json);
}
```

Replace `@freezed` with:

```dart
@Freezed(fallbackUnion: 'unknown')
class EventDetails with _$EventDetails {
  ...
}
```

</details>

<details>
<summary>Change #14</summary>

In the `event.dart` file, add a new part file below imports list:

```dart
part 'event.g.dart';
```

Add a new `.fromJson` named constructor in the end of the `Event` class:

```dart
@freezed
class Event with _$Event {
  ...
  factory Event.fromJson(Map<String, dynamic> json) => 
      _$EventFromJson(json);
}
```

</details>

<details>
<summary>Change #15</summary>

In the `event.dart` file, replace `details` field declaration with:

```dart
@JsonKey(readValue: _readEventDetails) required EventDetails details,
```

In the end of the file, add global function:

```dart
Object? _readEventDetails(Map json, String key) {
  final announced = json['announced'] as bool?;
  final detailsRuntimeType = switch (announced) {
    true => 'announced',
    false => 'notAnnounced',
    null => 'unknown',
  };
  final detailsJson = json[key];
  return detailsJson?..['runtimeType'] = detailsRuntimeType;
}
```

Replace `details` field declaration with:

```dart
@JsonKey(readValue: _readEventDetails)
@Default(EventDetails.unknown())
EventDetails details,
```

</details>

<details>
<summary>Change #16</summary>

In the `events_api.dart` file, replace usages of `ApiEvent` with `Event`:

```dart
Future<ApiResponse<Event>> getEvent(String id) async {
  ...
  final value = ApiResponse<Event>.fromJson(
    response.data!,
    (json) => Event.fromJson(json as Map<String, dynamic>),
  );
  ...
}
```

Fix import by adding:

```dart
import 'package:flutter_networking_app/domain/model/event.dart';
```

and removing:

```dart
import 'package:flutter_networking_app/api/events/model/api_event.dart';
```

In the `events_repository.dart` file, update the last line of the `getEvent` method to:

```dart
Future<Event> getEvent(String id) async {
  ...
  return response.data;
}
```

And fix imports by removing:

```dart
import 'package:flutter_networking_app/api/events/mapper/event_mapper.dart';
```

Now, `api_event.dart`, `api_event_details.dart`, `api_event_type.dart` files and `api/events/mapper` and `api/events/model` folders can be deleted.

</details>

<details>
<summary>Change #17</summary>

In the `event.dart` file, update `image` field declaration with:

```dart
@JsonKey(name: 'imageUrl') required Uri? image,
```

Update `type` field declaration with:

```dart
@JsonKey(name: 'type', unknownEnumValue: EventType.unknown)
@Default(EventType.unknown)
EventType type,
```

</details>

<details>
<summary>Change #18</summary>

Create `build.yaml` file next to the `pubspec.yaml` file:

```yaml
targets:
  $default:
    builders:
      json_serializable:
        options:
          include_if_null: false
          explicit_to_json: true
```

</details>

<details>
<summary>Change #19</summary>

Replace `api_response.dart` file with 

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@Freezed(genericArgumentFactories: true)
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    required T data,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ApiResponseFromJson(json, fromJsonT);
}
```

</details>
<details>
<summary>Change #20</summary>

In the `auth_data_manager.dart` file, provide any non-empty `String` for the `authData` getter:

```dart
Future<String> get authData => Future.value('foxanna');
```

</details>

<details>
<summary>Change #21</summary>

Under `api/core/client/` folder, create an `interceptor` folder with `append_api_key_interceptor.dart` file:

```dart
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
```

In the `dio.dart` file, update `createDio` method:

```dart
Dio createDio(
  AppendApiKeyInterceptor appendApiKeyInterceptor,
) =>
    Dio(
      BaseOptions(baseUrl: baseUrl),
    )..interceptors.addAll([
        appendApiKeyInterceptor,
      ]);
```

and add a new `import`:

```dart
import 'package:flutter_networking_app/api/core/client/interceptor/append_api_key_interceptor.dart';
```

In the `service_locator.dart` file, update `createDio` method call:

```dart
final _dio = createDio(
  AppendApiKeyInterceptor(ApiKeyManager()),
);
```

Remove `ApiKeyManager` class usage from `EventsApi` class in `events_api.dart` file:

```dart
class EventsApi {
  const EventsApi(this._dio);

  final Dio _dio;
  
  Future<ApiResponse<List<EventSummary>>> getEvents(String sort) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '/events',
      queryParameters: {'sort': sort},
    );
    ...
  }

  Future<ApiResponse<Event>> getEvent(String id) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '/events/$id',
    );
    ...
  }
```

Remove unused import:

```dart
import 'package:flutter_networking_app/api/core/manager/api_key_manager.dart';
```

Repeat the same for `SupportApi` class in `support_api.dart` file:

```dart
class SupportApi {
  const SupportApi(
    this._dio,
    this._authDataManager,
  );

  final Dio _dio;
  final AuthDataManager _authDataManager;
  
  ...
}
```

In the `service_locator.dart` file, update repository getters:

```dart  
EventsRepository get eventsRepository => EventsRepository(
  EventsApi(_dio),
);

SupportRepository get supportRepository => SupportRepository(
  SupportApi(
    _dio,
    AuthDataManager(),
  ),
);
```

</details>

<details>
<summary>Change #22</summary>

Under `api/core` folder create a `marker` folder with `authenticated_request_marker.dart` file:

```dart
const authenticatedRequestExtraKey = 'append_auth_header';
```

Under `api/core/interceptor` folder create a `append_auth_interceptor.dart` file:

```dart
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
```

In the `dio.dart` file, update `createDio` method:

```dart
Dio createDio(
  ...,
  AppendAuthInterceptor appendAuthInterceptor,
) =>
    ...
    )..interceptors.addAll([
      ...,
      appendAuthInterceptor,
    ]);
```

and add a new `import`:

```dart
import 'package:flutter_networking_app/api/core/client/interceptor/append_auth_interceptor.dart';
```

In the `service_locator.dart` file, update `createDio` method call:

```dart
final _dio = createDio(
  AppendApiKeyInterceptor(ApiKeyManager()),
  AppendAuthInterceptor(AuthDataManager()),
);
```

and add a new `import`:

```dart
import 'package:flutter_networking_app/api/core/client/interceptor/append_auth_interceptor.dart';
```

In the `support_api.dart` file, remove usages of `AuthDataManager`:

```dart
class SupportApi {
  const SupportApi(this._dio);

  final Dio _dio;

  ...
}
```

And instead of providing `options.headers`:

```dart
options: Options(
    headers: {
      'auth': authData,
    },
),
```

provide:

```dart
options: Options(
    extra: {
      authenticatedRequestExtraKey: true,
    },
),
```

Add a new `import`:

```dart
import 'package:flutter_networking_app/api/core/marker/authenticated_request_marker.dart';
```

In the `service_locator.dart` file, update `supportRepository` getter:

```dart
SupportRepository get supportRepository => SupportRepository(
  SupportApi(_dio),
);
```

</details>

<details>
<summary>Change #23</summary>

Add new dependencies in `pubspec.yaml` file:

```yaml
dependencies:
  ...
  retrofit: 4.0.1

dev_dependencies:
  ...
  retrofit_generator: 7.0.8
```

Perform `pub get` and re-run code generation with:

```shell
dart run build_runner watch --delete-conflicting-outputs
```

</details>

<details>
<summary>Change #24</summary>

Replace `events_api.dart` file with:

```dart
import 'package:dio/dio.dart';
import 'package:flutter_networking_app/api/core/model/api_response.dart';
import 'package:flutter_networking_app/domain/model/event.dart';
import 'package:flutter_networking_app/domain/model/event_summary.dart';
import 'package:retrofit/retrofit.dart';

part 'events_api.g.dart';

@RestApi()
abstract class EventsApi {
  factory EventsApi(Dio dio) = _EventsApi;

  @GET('/events')
  Future<ApiResponse<List<EventSummary>>> getEvents(@Query('sort') String sort);

  @GET('/events/{id}')
  Future<ApiResponse<Event>> getEvent(@Path('id') String id);
}
```

</details>

<details>
<summary>Change #25</summary>

In the `events_api.dart` file, update `getEvents` method:

```dart
@GET('/events')
Future<ApiResponse<List<EventSummary>>> getEvents(
  @Query('sort') EventSorting sort,
);
```

In the `events_repository.dart` file, update `getEvents` method:

```dart
Future<List<EventSummary>> getEvents(EventSorting sort) async {
  final response = await _api.getEvents(sort);
  return response.data;
}
```

Replace `event_sorting.dart` file with:

```dart
import 'package:json_annotation/json_annotation.dart';

part 'event_sorting.g.dart';

@JsonEnum(alwaysCreate: true)
enum EventSorting {
  byName,
  byDate;
}
```

Add a `.toJson` method:

```dart
enum EventSorting {
  ...

  String? toJson() => _$EventSortingEnumMap[this];
}
```

Update an annotation above `EventSorting`:

```dart
@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.kebab)
enum EventSorting {
  ...
}
```

</details>

<details>
<summary>Change #26</summary>

Add `global_options` section in the end of `build.yaml` file:

```yaml
...

global_options:
  freezed:
    runs_before:
      - json_serializable
  json_serializable:
    runs_before:
      - retrofit_generator
```

</details>

<details>
<summary>Change #27</summary>

Replace `support_api.dart` file with:

```dart
import 'package:dio/dio.dart';
import 'package:flutter_networking_app/api/core/model/api_response.dart';
import 'package:flutter_networking_app/api/support/model/support_request.dart';
import 'package:flutter_networking_app/api/support/model/support_response.dart';
import 'package:retrofit/retrofit.dart';

part 'support_api.g.dart';

@RestApi()
abstract class SupportApi {
  factory SupportApi(Dio dio) = _SupportApi;

  @POST('/support/speak')
  Future<ApiResponse<SupportResponse>> applyToSpeak(
    @Body() SupportRequest request,
  );

  @POST('/support/sponsor')
  Future<ApiResponse<SupportResponse>> applyToSponsor(
    @Body() SupportRequest request,
  );
}
```

Add an `@Extra` on top of every function call:

```dart
@Extra({authenticatedRequestExtraKey: true})
@POST('/support/speak')
...

@Extra({authenticatedRequestExtraKey: true})
@POST('/support/sponsor')
...
```

In the `authenticated_request_marker.dart` file, add:

```dart
import 'package:retrofit/retrofit.dart';

...

const authenticatedRequest = Extra({authenticatedRequestExtraKey: true});
```

In `support_api.dart` file, replace `@Extra({authenticatedRequestExtraKey: true})` with:

```dart
@authenticatedRequest
@POST('/support/speak')
...

@authenticatedRequest
@POST('/support/sponsor')
...
```

</details>
