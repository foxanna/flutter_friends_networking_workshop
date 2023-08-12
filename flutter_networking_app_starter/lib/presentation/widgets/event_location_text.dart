import 'package:flutter/material.dart';
import 'package:flutter_networking_app/domain/model/event_location.dart';

class EventLocationText extends StatelessWidget {
  const EventLocationText({
    super.key,
    required this.location,
  });

  final EventLocation location;

  @override
  Widget build(BuildContext context) => location.map(
        online: (location) => _buildStreamText(location.streamUrl),
        inPerson: (location) => _buildAddressText(location.address),
        hybrid: (location) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildAddressText(location.address),
            const SizedBox(height: 4.0),
            _buildStreamText(location.streamUrl),
          ],
        ),
        unknown: (_) => const Text('Location details are unknown'),
      );

  Widget _buildStreamText(String streamUrl) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.computer),
          const SizedBox(width: 8.0),
          Expanded(child: Text('Watch online at:\n$streamUrl')),
        ],
      );

  Widget _buildAddressText(String address) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.location_pin),
          const SizedBox(width: 8.0),
          Expanded(child: Text('Visit in person at:\n$address')),
        ],
      );
}
