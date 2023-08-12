import 'package:data_source/models/event_location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_details.g.dart';

abstract class EventDetails {
  factory EventDetails.fromJson(Map<String, dynamic> json) =>
      throw UnimplementedError();

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class AnnouncedEventDetails implements EventDetails {
  const AnnouncedEventDetails({
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.location,
  });

  final String description;
  final DateTime startDate;
  final DateTime endDate;
  final EventLocation location;

  factory AnnouncedEventDetails.fromJson(Map<String, dynamic> json) =>
      _$AnnouncedEventDetailsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnnouncedEventDetailsToJson(this);
}

@JsonSerializable()
class NotAnnouncedEventDetails implements EventDetails {
  const NotAnnouncedEventDetails({
    required this.description,
  });

  final String? description;

  factory NotAnnouncedEventDetails.fromJson(Map<String, dynamic> json) =>
      _$NotAnnouncedEventDetailsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotAnnouncedEventDetailsToJson(this);
}
