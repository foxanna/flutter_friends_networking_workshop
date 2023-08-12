import 'package:data_source/models/event_details.dart';
import 'package:data_source/models/event_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event.g.dart';

@JsonSerializable()
class Event {
  const Event({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.website,
    required this.type,
    required this.announced,
    required this.details,
  });

  final String id;
  final String name;
  final String? imageUrl;
  final String? website;
  final EventType type;
  final bool announced;
  final EventDetails details;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  Map<String, dynamic> toJson() => _$EventToJson(this);
}
