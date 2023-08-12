import 'package:flutter/material.dart';
import 'package:flutter_networking_app/services/service_locator.dart';

class EventAppBarMenu extends StatefulWidget {
  const EventAppBarMenu({
    super.key,
    required this.eventId,
  });

  final String eventId;

  @override
  State<EventAppBarMenu> createState() => _EventAppBarMenuState();
}

class _EventAppBarMenuState extends State<EventAppBarMenu> {
  bool _executing = false;

  @override
  Widget build(BuildContext context) => PopupMenuButton<EventAppBarAction>(
        icon: const Icon(Icons.more_vert),
        tooltip: 'More actions',
        itemBuilder: (context) => <PopupMenuEntry<EventAppBarAction>>[
          PopupMenuItem<EventAppBarAction>(
            value: EventAppBarAction.speak,
            enabled: !_executing,
            child: const Text('Apply to speak'),
          ),
          PopupMenuItem<EventAppBarAction>(
            value: EventAppBarAction.sponsor,
            enabled: !_executing,
            child: const Text('Apply to sponsor'),
          ),
        ],
        onSelected: (value) => _onAction(context, value),
      );

  Future<void> _onAction(BuildContext context, EventAppBarAction value) async {
    if (_executing) {
      return;
    }

    setState(() => _executing = true);

    try {
      final message = await switch (value) {
        EventAppBarAction.sponsor => serviceLocator.supportRepository
            .createSponsorshipRequest(widget.eventId),
        EventAppBarAction.speak => serviceLocator.supportRepository
            .createSpeakingRequest(widget.eventId),
      };
      if (context.mounted) {
        await showAdaptiveDialog(
          context: context,
          builder: (context) => AlertDialog.adaptive(
            title: const Text('Thanks!'),
            content: Text(message),
            actions: [
              TextButton(
                child: const Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        await showAdaptiveDialog(
          context: context,
          builder: (context) => AlertDialog.adaptive(
            title: const Text('Oops!'),
            content: const Text('Something went wrong'),
            actions: [
              TextButton(
                child: const Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        );
      }
    } finally {
      setState(() => _executing = false);
    }
  }
}

enum EventAppBarAction { speak, sponsor }
