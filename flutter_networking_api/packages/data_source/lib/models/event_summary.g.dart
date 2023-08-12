// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventSummary _$EventSummaryFromJson(Map<String, dynamic> json) => EventSummary(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String?,
      type: $enumDecode(_$EventTypeEnumMap, json['type']),
      startDate: _$JsonConverterFromJson<String, DateTime>(
          json['startDate'], const DateTimeToStringConverter().fromJson),
      endDate: _$JsonConverterFromJson<String, DateTime>(
          json['endDate'], const DateTimeToStringConverter().fromJson),
    );

Map<String, dynamic> _$EventSummaryToJson(EventSummary instance) {
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
  val['type'] = _$EventTypeEnumMap[instance.type]!;
  writeNotNull(
      'startDate',
      _$JsonConverterToJson<String, DateTime>(
          instance.startDate, const DateTimeToStringConverter().toJson));
  writeNotNull(
      'endDate',
      _$JsonConverterToJson<String, DateTime>(
          instance.endDate, const DateTimeToStringConverter().toJson));
  return val;
}

const _$EventTypeEnumMap = {
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
