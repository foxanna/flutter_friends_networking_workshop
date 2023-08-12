import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_networking_app/domain/model/event_type.dart';
import 'package:url_launcher/url_launcher.dart';

class EventWebsiteText extends StatefulWidget {
  const EventWebsiteText({
    super.key,
    required this.website,
    required this.eventType,
  });

  final Uri website;
  final EventType eventType;

  @override
  State<EventWebsiteText> createState() => _EventWebsiteTextState();
}

class _EventWebsiteTextState extends State<EventWebsiteText> {
  late TapGestureRecognizer _tapRecognizer;

  @override
  void initState() {
    super.initState();
    _tapRecognizer = TapGestureRecognizer()..onTap = _launchUri;
  }

  @override
  Widget build(BuildContext context) => RichText(
        text: TextSpan(
          children: [
            const TextSpan(text: 'Visit '),
            TextSpan(
              text: widget.website.toString(),
              style: const TextStyle(
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
              ),
              recognizer: _tapRecognizer,
            ),
            const TextSpan(text: ' for more information about the '),
            TextSpan(
              text: switch (widget.eventType) {
                EventType.conference => 'conference',
                EventType.meetup => 'meetup',
                EventType.devfest => 'DevFest',
                EventType.unknown => 'event',
              },
            ),
            const TextSpan(text: '.'),
          ],
          style: DefaultTextStyle.of(context).style,
        ),
        textScaleFactor: MediaQuery.textScaleFactorOf(context),
      );

  @override
  void dispose() {
    _tapRecognizer.dispose();
    super.dispose();
  }

  Future<void> _launchUri() => launchUrl(widget.website);
}
