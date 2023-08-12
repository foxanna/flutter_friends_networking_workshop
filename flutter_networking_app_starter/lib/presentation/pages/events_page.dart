import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_networking_app/domain/model/event_sorting.dart';
import 'package:flutter_networking_app/domain/model/event_summary.dart';
import 'package:flutter_networking_app/presentation/pages/data_page.dart';
import 'package:flutter_networking_app/presentation/pages/event_page.dart';
import 'package:flutter_networking_app/presentation/widgets/event_dates_text.dart';
import 'package:flutter_networking_app/services/service_locator.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Upcoming 2023 Flutter events'),
        ),
        body: DataPage<List<EventSummary>>(
          dataLoader: () =>
              serviceLocator.eventsRepository.getEvents(EventSorting.byDate),
          builder: (context, events) => EventsPageContent(events: events),
        ),
      );
}

class EventsPageContent extends StatelessWidget {
  const EventsPageContent({
    super.key,
    required this.events,
  });

  final List<EventSummary> events;

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemBuilder: (context, index) {
          final event = events[index];
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            leading: event.image != null
                ? CachedNetworkImage(
                    imageUrl: event.image!.toString(),
                    width: 60.0,
                    height: 60.0,
                  )
                : null,
            title: Text(event.name),
            subtitle: event.startDate != null
                ? EventDatesText(
                    startDate: event.startDate!,
                    endDate: event.endDate,
                  )
                : null,
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (context) => EventPage(id: event.id),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(height: 1.0),
        itemCount: events.length,
      );
}
