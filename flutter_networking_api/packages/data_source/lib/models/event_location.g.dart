// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OnlineEventLocation _$OnlineEventLocationFromJson(Map<String, dynamic> json) =>
    OnlineEventLocation(
      streamUrl: json['streamUrl'] as String,
    );

Map<String, dynamic> _$OnlineEventLocationToJson(
        OnlineEventLocation instance) =>
    <String, dynamic>{
      'streamUrl': instance.streamUrl,
      'type': _$LocationTypeEnumMap[instance.type]!,
    };

const _$LocationTypeEnumMap = {
  LocationType.online: 'online',
  LocationType.inPerson: 'in-person',
  LocationType.hybrid: 'hybrid',
};

InPersonEventLocation _$InPersonEventLocationFromJson(
        Map<String, dynamic> json) =>
    InPersonEventLocation(
      address: json['address'] as String,
    );

Map<String, dynamic> _$InPersonEventLocationToJson(
        InPersonEventLocation instance) =>
    <String, dynamic>{
      'address': instance.address,
      'type': _$LocationTypeEnumMap[instance.type]!,
    };

HybridEventLocation _$HybridEventLocationFromJson(Map<String, dynamic> json) =>
    HybridEventLocation(
      streamUrl: json['streamUrl'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$HybridEventLocationToJson(
        HybridEventLocation instance) =>
    <String, dynamic>{
      'streamUrl': instance.streamUrl,
      'address': instance.address,
      'type': _$LocationTypeEnumMap[instance.type]!,
    };
