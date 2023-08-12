import 'package:flutter_networking_app/api/events/model/api_event_type.dart';
import 'package:flutter_networking_app/domain/model/event_type.dart';

class ApiEventSummary {
  const ApiEventSummary({
    required this.id,
    required this.name,
    required this.type,
    required this.image,
    required this.startDate,
    required this.endDate,
  });

  final String id;
  final String name;
  final EventType type;
  final Uri? image;
  final DateTime? startDate;
  final DateTime? endDate;

  factory ApiEventSummary.fromJson(Map<String, dynamic> json) =>
      ApiEventSummary(
        id: json['id'] as String,
        name: json['name'] as String,
        type: EventTypeApiX.fromJson(json['type'] as String?),
        image: (json['imageUrl'] as String?) != null
            ? Uri.tryParse(json['imageUrl'] as String)
            : null,
        startDate: json['startDate'] == null
            ? null
            : DateTimeApiX.fromJson(json['startDate'] as String),
        endDate: json['endDate'] == null
            ? null
            : DateTimeApiX.fromJson(json['endDate'] as String),
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'type': type.toJson(),
        'imageUrl': image,
        'startDate': startDate?.toJson(),
        'endDate': endDate?.toJson(),
      };
}

extension DateTimeApiX on DateTime {
  static DateTime fromJson(String json) {
    final dates = json.split('-');
    return DateTime.utc(
      int.parse(dates[0]),
      int.parse(dates[1]),
      int.parse(dates[2]),
    );
  }

  String toJson() => '$year'
      '-${_twoDigits(month)}'
      '-${_twoDigits(day)}';

  static String _twoDigits(int n) => n >= 10 ? '$n' : '0$n';
}
