import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dartx/dartx.dart';
import 'package:data_source/events.dart';
import 'package:data_source/models/event.dart';
import 'package:data_source/models/event_details.dart';
import 'package:data_source/models/event_summary.dart';

import '../../utils/create_response.dart';
import '../../utils/ensure_api_key_header.dart';
import '../../utils/ensure_request_method.dart';
import '../../utils/relative_to_absolute_image_path.dart';

Response onRequest(RequestContext context) {
  final request = context.request;

  return ensureRequestMethod(request, HttpMethod.get) ??
      ensureApiKeyHeader(request) ??
      _createResponse(request);
}

Response _createResponse(Request request) {
  final sortByParameter = request.uri.queryParameters['sort'];
  final sortBy = sortByParameter != null
      ? _SortBy.values.firstOrNullWhere((e) => e.value == sortByParameter)
      : _SortBy.byDate;

  if (sortBy == null) {
    return Response(
      statusCode: HttpStatus.badRequest,
      body: 'Unknown "sort" value: "$sortByParameter". Supported values are: '
          '${_SortBy.values.map((e) => e.value).join(', ')}.',
    );
  }

  final processedEvents = _buildEvents(sortBy, request.uri.origin)
      .map(EventSummary.fromEvent)
      .map((e) => e.toJson())
      .toList();
  return createResponse(processedEvents);
}

List<Event> _buildEvents(_SortBy sortBy, String requestOrigin) {
  final updateEvents = events
      .map((e) => e.changeRelativeImagePathToAbsolute(requestOrigin))
      .toList();
  switch (sortBy) {
    case _SortBy.byName:
      return updateEvents.sortedBy((e) => e.name).toList();
    case _SortBy.byDate:
      final partitioned =
          updateEvents.partition((e) => e.details is AnnouncedEventDetails);
      final announcedEvents = partitioned.first;
      final notAnnouncedEvents = partitioned.second;
      return [
        ...announcedEvents
            .sortedBy((e) => (e.details as AnnouncedEventDetails).startDate),
        ...notAnnouncedEvents,
      ].toList();
  }
}

enum _SortBy {
  byName('by-name'),
  byDate('by-date');

  const _SortBy(this.value);

  final String value;
}
