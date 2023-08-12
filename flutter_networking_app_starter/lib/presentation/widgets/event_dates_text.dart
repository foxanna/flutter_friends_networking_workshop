import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EventDatesText extends StatelessWidget {
  const EventDatesText({
    super.key,
    required this.startDate,
    required this.endDate,
    this.textAlign,
  });

  final DateTime startDate;
  final DateTime? endDate;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) => Text(
        '${DateFormat('yyyy').format(startDate)}, ${[
          startDate,
          endDate
        ].whereNotNull().distinct().map(
              (date) => DateFormat('MMM d').format(date),
            ).join(' - ')}',
        textAlign: textAlign,
        style: Theme.of(context).textTheme.bodyMedium,
      );
}
