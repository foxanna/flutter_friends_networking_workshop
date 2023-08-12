import 'package:flutter_networking_app/api/events/model/api_event_location.dart';

sealed class ApiEventDetails {
  factory ApiEventDetails.fromJson(
    Map<String, dynamic> json,
    bool? isAnnounced,
  ) =>
      switch (isAnnounced) {
        true => AnnouncedApiEventDetails.fromJson(json),
        false => NotAnnouncedApiEventDetails.fromJson(json),
        null => UnknownApiEventDetails.fromJson(json),
      };

  Map<String, dynamic> toJson();
}

class AnnouncedApiEventDetails implements ApiEventDetails {
  const AnnouncedApiEventDetails({
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.location,
  });

  final String description;
  final DateTime startDate;
  final DateTime endDate;
  final ApiEventLocation location;

  factory AnnouncedApiEventDetails.fromJson(Map<String, dynamic> json) =>
      AnnouncedApiEventDetails(
        description: json['description'] as String,
        startDate: DateTime.parse(json['startDate'] as String),
        endDate: DateTime.parse(json['endDate'] as String),
        location:
            ApiEventLocation.fromJson(json['location'] as Map<String, dynamic>),
      );

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'description': description,
        'startDate': startDate.toIso8601String(),
        'endDate': endDate.toIso8601String(),
        'location': location.toJson(),
      };
}

class NotAnnouncedApiEventDetails implements ApiEventDetails {
  const NotAnnouncedApiEventDetails({
    required this.description,
  });

  final String? description;

  factory NotAnnouncedApiEventDetails.fromJson(Map<String, dynamic> json) =>
      NotAnnouncedApiEventDetails(
        description: json['description'] as String?,
      );

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'description': description,
      };
}

class UnknownApiEventDetails implements ApiEventDetails {
  const UnknownApiEventDetails();

  factory UnknownApiEventDetails.fromJson(Map<String, dynamic> json) =>
      const UnknownApiEventDetails();

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{};
}
