import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_networking_app/domain/model/event.dart';
import 'package:flutter_networking_app/presentation/pages/data_page.dart';
import 'package:flutter_networking_app/presentation/widgets/event_app_bar_menu.dart';
import 'package:flutter_networking_app/presentation/widgets/event_dates_text.dart';
import 'package:flutter_networking_app/presentation/widgets/event_location_text.dart';
import 'package:flutter_networking_app/presentation/widgets/event_website_text.dart';
import 'package:flutter_networking_app/services/service_locator.dart';

class EventPage extends StatelessWidget {
  const EventPage({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(actions: [EventAppBarMenu(eventId: id)]),
        body: DataPage<Event>(
          dataLoader: () => serviceLocator.eventsRepository.getEvent(id),
          builder: (context, event) => EventPageContent(event: event),
        ),
      );
}

class EventPageContent extends StatelessWidget {
  const EventPageContent({
    super.key,
    required this.event,
  });

  final Event event;

  @override
  Widget build(BuildContext context) => ListView(
        children: [
          Text(
            event.name,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          event.details.maybeMap(
            announced: (details) => EventDatesText(
              startDate: details.startDate,
              endDate: details.endDate,
              textAlign: TextAlign.center,
            ),
            notAnnounced: (details) => Text(
              'Keep an eye for the date announcement',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            orElse: () => null,
          ),
          if (event.image != null)
            CachedNetworkImage(
              imageUrl: event.image!.toString(),
              width: 200.0,
              height: 200.0,
            ),
          event.details.maybeMap(
            announced: (details) => Text(details.description),
            notAnnounced: (details) =>
                details.description != null ? Text(details.description!) : null,
            orElse: () => null,
          ),
          event.details.maybeMap(
            announced: (details) =>
                EventLocationText(location: details.location),
            orElse: () => null,
          ),
          if (event.website != null)
            EventWebsiteText(
              website: event.website!,
              eventType: event.type,
            ),
        ].whereNotNull().map((e) => ListTile(title: e)).toList(),
      );
}
