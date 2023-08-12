// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnlineEventLocation _$$OnlineEventLocationFromJson(
        Map<String, dynamic> json) =>
    _$OnlineEventLocation(
      streamUrl: json['streamUrl'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$OnlineEventLocationToJson(
        _$OnlineEventLocation instance) =>
    <String, dynamic>{
      'streamUrl': instance.streamUrl,
      'type': instance.$type,
    };

_$InPersonEventLocation _$$InPersonEventLocationFromJson(
        Map<String, dynamic> json) =>
    _$InPersonEventLocation(
      address: json['address'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$InPersonEventLocationToJson(
        _$InPersonEventLocation instance) =>
    <String, dynamic>{
      'address': instance.address,
      'type': instance.$type,
    };

_$HybridEventLocation _$$HybridEventLocationFromJson(
        Map<String, dynamic> json) =>
    _$HybridEventLocation(
      address: json['address'] as String,
      streamUrl: json['streamUrl'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$HybridEventLocationToJson(
        _$HybridEventLocation instance) =>
    <String, dynamic>{
      'address': instance.address,
      'streamUrl': instance.streamUrl,
      'type': instance.$type,
    };

_$UnknownEventLocation _$$UnknownEventLocationFromJson(
        Map<String, dynamic> json) =>
    _$UnknownEventLocation(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$UnknownEventLocationToJson(
        _$UnknownEventLocation instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };
