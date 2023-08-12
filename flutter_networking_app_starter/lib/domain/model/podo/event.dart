import 'package:flutter_networking_app/domain/model/event_details.dart';
import 'package:flutter_networking_app/domain/model/event_type.dart';

class EventPODO {
  const EventPODO({
    required this.id,
    required this.name,
    required this.image,
    required this.website,
    required this.type,
    required this.announced,
    required this.details,
  });

  final String id;
  final String name;
  final String? image;
  final String? website;
  final EventType type;
  final bool announced;
  final EventDetails details;

  @override
  String toString() => 'Event('
      'id: $id, '
      'name: $name, '
      'image: $image, '
      'website: $website, '
      'type: $type, '
      'announced: $announced, '
      'details: $details'
      ')';

  @override
  bool operator ==(dynamic other) =>
      other is EventPODO &&
      other.id == id &&
      other.name == name &&
      other.image == image &&
      other.website == website &&
      other.type == type &&
      other.announced == announced &&
      other.details == details;

  @override
  int get hashCode => Object.hash(
        runtimeType,
        id,
        name,
        image,
        website,
        type,
        announced,
        details,
      );

  EventPODO copyWith({
    String? id,
    String? name,
    String? image,
    String? website,
    EventType? type,
    bool? announced,
    EventDetails? details,
  }) =>
      EventPODO(
        id: id ?? this.id,
        name: name ?? this.name,
        image: image ?? this.image,
        website: website ?? this.website,
        type: type ?? this.type,
        announced: announced ?? this.announced,
        details: details ?? this.details,
      );

  EventPODO copyWithNullables({
    String? id,
    String? name,
    String? image = _nullableStringStub,
    String? website = _nullableStringStub,
    EventType? type,
    bool? announced,
    EventDetails? details,
  }) =>
      EventPODO(
        id: id ?? this.id,
        name: name ?? this.name,
        image: image != _nullableStringStub ? image : this.image,
        website: website != _nullableStringStub ? website : this.website,
        type: type ?? this.type,
        announced: announced ?? this.announced,
        details: details ?? this.details,
      );

  static const _nullableStringStub = 'nullableStringStub';
}
