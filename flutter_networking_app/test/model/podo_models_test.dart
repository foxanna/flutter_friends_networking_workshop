import 'package:flutter_networking_app/domain/model/event.dart';
import 'package:flutter_networking_app/domain/model/event_details.dart';
import 'package:flutter_networking_app/domain/model/event_location.dart';
import 'package:flutter_networking_app/domain/model/event_summary.dart';
import 'package:flutter_networking_app/domain/model/event_type.dart';
import 'package:flutter_networking_app/domain/model/podo/event.dart';
import 'package:flutter_networking_app/domain/model/podo/event_summary.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PODO models', () {
    test('$EventSummaryPODO is compared by value', () {
      final eventSummary1 = EventSummaryPODO(
        id: 'id',
        name: 'name',
        type: EventType.conference,
        image: null,
        startDate: DateTime(2020, 1, 1),
        endDate: null,
      );
      final eventSummary2 = EventSummaryPODO(
        id: 'id',
        name: 'name',
        type: EventType.conference,
        image: null,
        startDate: DateTime(2020, 1, 1),
        endDate: null,
      );

      expect(eventSummary1, equals(eventSummary2));
    });

    test('$EventPODO is compared by value', () {
      final event1 = EventPODO(
        id: 'id',
        name: 'name',
        image: 'image',
        website: 'website',
        type: EventType.meetup,
        announced: true,
        details: AnnouncedEventDetails(
          description: 'description',
          startDate: DateTime(2020, 1, 1),
          endDate: DateTime(2020, 1, 1),
          location: const UnknownEventLocation(),
        ),
      );
      final event2 = EventPODO(
        id: 'id',
        name: 'name',
        image: 'image',
        website: 'website',
        type: EventType.meetup,
        announced: true,
        details: AnnouncedEventDetails(
          description: 'description',
          startDate: DateTime(2020, 1, 1),
          endDate: DateTime(2020, 1, 1),
          location: const UnknownEventLocation(),
        ),
      );

      expect(event1, equals(event2));
    });

    test('$EventPODO copyWith can update fields to null values', () {
      final event1 = EventPODO(
        id: 'id',
        name: 'name',
        image: 'image',
        website: 'website',
        type: EventType.meetup,
        announced: true,
        details: AnnouncedEventDetails(
          description: 'description',
          startDate: DateTime(2020, 1, 1),
          endDate: DateTime(2020, 1, 1),
          location: const UnknownEventLocation(),
        ),
      );

      final event2 = event1.copyWith(website: null);

      expect(event2.website, isNull);
    });

    test('$EventPODO copyWith can update fields to null values', () {
      final event1 = EventPODO(
        id: 'id',
        name: 'name',
        image: 'image',
        website: 'website',
        type: EventType.meetup,
        announced: true,
        details: AnnouncedEventDetails(
          description: 'description',
          startDate: DateTime(2020, 1, 1),
          endDate: DateTime(2020, 1, 1),
          location: const UnknownEventLocation(),
        ),
      );

      final event2 = event1.copyWithNullables(website: null);

      expect(event2.website, isNull);
    });
  });

  group('Non-PODO models', () {
    test('$EventSummary is compared by value', () {
      final eventSummary1 = EventSummary(
        id: 'id',
        name: 'name',
        type: EventType.conference,
        image: null,
        startDate: DateTime(2020, 1, 1),
        endDate: null,
      );
      final eventSummary2 = EventSummary(
        id: 'id',
        name: 'name',
        type: EventType.conference,
        image: null,
        startDate: DateTime(2020, 1, 1),
        endDate: null,
      );

      expect(eventSummary1, equals(eventSummary2));
    });

    test('$Event copyWith can update fields to null values', () {
      final event1 = Event(
        id: 'id',
        name: 'name',
        image: Uri.parse('https://www.flutterfriends.dev/'),
        website: Uri.parse('https://www.flutterfriends.dev/'),
        type: EventType.meetup,
        details: AnnouncedEventDetails(
          description: 'description',
          startDate: DateTime(2020, 1, 1),
          endDate: DateTime(2020, 1, 1),
          location: const UnknownEventLocation(),
        ),
      );

      final event2 = event1.copyWith(website: null);

      expect(event2.website, isNull);
    });
  });
}
