// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnnouncedEventDetails _$AnnouncedEventDetailsFromJson(
        Map<String, dynamic> json) =>
    AnnouncedEventDetails(
      description: json['description'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      location:
          EventLocation.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnnouncedEventDetailsToJson(
        AnnouncedEventDetails instance) =>
    <String, dynamic>{
      'description': instance.description,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'location': instance.location.toJson(),
    };

NotAnnouncedEventDetails _$NotAnnouncedEventDetailsFromJson(
        Map<String, dynamic> json) =>
    NotAnnouncedEventDetails(
      description: json['description'] as String?,
    );

Map<String, dynamic> _$NotAnnouncedEventDetailsToJson(
    NotAnnouncedEventDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  return val;
}
