import 'package:flutter_networking_app/api/events/model/api_event_details.dart';
import 'package:flutter_networking_app/api/events/model/api_event_type.dart';
import 'package:flutter_networking_app/domain/model/event_type.dart';

class ApiEvent {
  const ApiEvent({
    required this.id,
    required this.name,
    required this.image,
    required this.website,
    required this.type,
    required this.details,
  });

  final String id;
  final String name;
  final Uri? image;
  final Uri? website;
  final EventType type;
  final ApiEventDetails details;

  factory ApiEvent.fromJson(Map<String, dynamic> json) => ApiEvent(
        id: json['id'] as String,
        name: json['name'] as String,
        image: (json['imageUrl'] as String?) != null
            ? Uri.tryParse(json['imageUrl'] as String)
            : null,
        website: (json['website'] as String?) != null
            ? Uri.tryParse(json['website'] as String)
            : null,
        type: EventTypeApiX.fromJson(json['type'] as String?),
        details: ApiEventDetails.fromJson(
          json['details'] as Map<String, dynamic>,
          json['announced'] as bool?,
        ),
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'imageUrl': image,
        'website': website,
        'type': type.toJson(),
        'details': details.toJson(),
      };
}
