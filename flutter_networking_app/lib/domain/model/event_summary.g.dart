// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventSummary _$$_EventSummaryFromJson(Map<String, dynamic> json) =>
    _$_EventSummary(
      id: json['id'] as String,
      name: json['name'] as String? ?? '',
      type: $enumDecodeNullable(_$EventTypeEnumMap, json['type'],
              unknownValue: EventType.unknown) ??
          EventType.unknown,
      image: json['imageUrl'] == null
          ? null
          : Uri.parse(json['imageUrl'] as String),
      startDate: _$JsonConverterFromJson<String, DateTime>(
          json['startDate'], const DateTimeToDashedStringConverter().fromJson),
      endDate: _$JsonConverterFromJson<String, DateTime>(
          json['endDate'], dateTimeToDashedStringConverter.fromJson),
    );

Map<String, dynamic> _$$_EventSummaryToJson(_$_EventSummary instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'type': _$EventTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('imageUrl', instance.image?.toString());
  writeNotNull(
      'startDate',
      _$JsonConverterToJson<String, DateTime>(
          instance.startDate, const DateTimeToDashedStringConverter().toJson));
  writeNotNull(
      'endDate',
      _$JsonConverterToJson<String, DateTime>(
          instance.endDate, dateTimeToDashedStringConverter.toJson));
  return val;
}

const _$EventTypeEnumMap = {
  EventType.unknown: 'unknown',
  EventType.conference: 'CONF',
  EventType.meetup: 'MEETUP',
  EventType.devfest: 'DEV_FEST',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
