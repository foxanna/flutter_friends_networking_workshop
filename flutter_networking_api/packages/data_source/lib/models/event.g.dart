// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String?,
      website: json['website'] as String?,
      type: $enumDecode(_$EventTypeEnumMap, json['type']),
      announced: json['announced'] as bool,
      details: EventDetails.fromJson(json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventToJson(Event instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('website', instance.website);
  val['type'] = _$EventTypeEnumMap[instance.type]!;
  val['announced'] = instance.announced;
  val['details'] = instance.details.toJson();
  return val;
}

const _$EventTypeEnumMap = {
  EventType.conference: 'CONF',
  EventType.meetup: 'MEETUP',
  EventType.devfest: 'DEV_FEST',
};
