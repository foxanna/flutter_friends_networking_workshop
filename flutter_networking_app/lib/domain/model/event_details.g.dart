// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnouncedEventDetails _$$AnnouncedEventDetailsFromJson(
        Map<String, dynamic> json) =>
    _$AnnouncedEventDetails(
      description: json['description'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      location:
          EventLocation.fromJson(json['location'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AnnouncedEventDetailsToJson(
        _$AnnouncedEventDetails instance) =>
    <String, dynamic>{
      'description': instance.description,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'location': instance.location.toJson(),
      'runtimeType': instance.$type,
    };

_$NotAnnouncedEventDetails _$$NotAnnouncedEventDetailsFromJson(
        Map<String, dynamic> json) =>
    _$NotAnnouncedEventDetails(
      description: json['description'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NotAnnouncedEventDetailsToJson(
    _$NotAnnouncedEventDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['runtimeType'] = instance.$type;
  return val;
}

_$UnknownEventDetails _$$UnknownEventDetailsFromJson(
        Map<String, dynamic> json) =>
    _$UnknownEventDetails(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnknownEventDetailsToJson(
        _$UnknownEventDetails instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
