import 'package:json_annotation/json_annotation.dart';

part 'event_location.g.dart';

abstract class EventLocation {
  factory EventLocation.fromJson(Map<String, dynamic> json) =>
      switch ($enumDecode(_$LocationTypeEnumMap, json['type'])) {
        LocationType.online => OnlineEventLocation.fromJson(json),
        LocationType.inPerson => InPersonEventLocation.fromJson(json),
        LocationType.hybrid => HybridEventLocation.fromJson(json),
      };

  Map<String, dynamic> toJson();

  LocationType get type;
}

@JsonSerializable()
class OnlineEventLocation implements EventLocation {
  const OnlineEventLocation({
    required this.streamUrl,
  });

  final String streamUrl;

  @override
  @JsonKey(includeToJson: true)
  LocationType get type => LocationType.online;

  factory OnlineEventLocation.fromJson(Map<String, dynamic> json) =>
      _$OnlineEventLocationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$OnlineEventLocationToJson(this);
}

@JsonSerializable()
class InPersonEventLocation implements EventLocation {
  const InPersonEventLocation({
    required this.address,
  });

  final String address;

  @override
  @JsonKey(includeToJson: true)
  LocationType get type => LocationType.inPerson;

  factory InPersonEventLocation.fromJson(Map<String, dynamic> json) =>
      _$InPersonEventLocationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InPersonEventLocationToJson(this);
}

@JsonSerializable()
class HybridEventLocation implements EventLocation {
  const HybridEventLocation({
    required this.streamUrl,
    required this.address,
  });

  final String streamUrl;
  final String address;

  @override
  @JsonKey(includeToJson: true)
  LocationType get type => LocationType.hybrid;

  factory HybridEventLocation.fromJson(Map<String, dynamic> json) =>
      _$HybridEventLocationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$HybridEventLocationToJson(this);
}

@JsonEnum(fieldRename: FieldRename.kebab)
enum LocationType {
  online,
  inPerson,
  hybrid,
}
