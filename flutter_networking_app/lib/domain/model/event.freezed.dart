// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageUrl')
  Uri? get image => throw _privateConstructorUsedError;
  Uri? get website => throw _privateConstructorUsedError;
  @JsonKey(name: 'type', unknownEnumValue: EventType.unknown)
  EventType get type => throw _privateConstructorUsedError;
  @JsonKey(readValue: _readEventDetails)
  EventDetails get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'imageUrl') Uri? image,
      Uri? website,
      @JsonKey(name: 'type', unknownEnumValue: EventType.unknown)
      EventType type,
      @JsonKey(readValue: _readEventDetails) EventDetails details});

  $EventDetailsCopyWith<$Res> get details;
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
    Object? website = freezed,
    Object? type = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uri?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as Uri?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EventType,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as EventDetails,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventDetailsCopyWith<$Res> get details {
    return $EventDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$_EventCopyWith(_$_Event value, $Res Function(_$_Event) then) =
      __$$_EventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'imageUrl') Uri? image,
      Uri? website,
      @JsonKey(name: 'type', unknownEnumValue: EventType.unknown)
      EventType type,
      @JsonKey(readValue: _readEventDetails) EventDetails details});

  @override
  $EventDetailsCopyWith<$Res> get details;
}

/// @nodoc
class __$$_EventCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res, _$_Event>
    implements _$$_EventCopyWith<$Res> {
  __$$_EventCopyWithImpl(_$_Event _value, $Res Function(_$_Event) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
    Object? website = freezed,
    Object? type = null,
    Object? details = null,
  }) {
    return _then(_$_Event(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uri?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as Uri?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EventType,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as EventDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Event implements _Event {
  const _$_Event(
      {required this.id,
      required this.name,
      @JsonKey(name: 'imageUrl') required this.image,
      required this.website,
      @JsonKey(name: 'type', unknownEnumValue: EventType.unknown)
      this.type = EventType.unknown,
      @JsonKey(readValue: _readEventDetails)
      this.details = const EventDetails.unknown()});

  factory _$_Event.fromJson(Map<String, dynamic> json) =>
      _$$_EventFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'imageUrl')
  final Uri? image;
  @override
  final Uri? website;
  @override
  @JsonKey(name: 'type', unknownEnumValue: EventType.unknown)
  final EventType type;
  @override
  @JsonKey(readValue: _readEventDetails)
  final EventDetails details;

  @override
  String toString() {
    return 'Event(id: $id, name: $name, image: $image, website: $website, type: $type, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Event &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, image, website, type, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventCopyWith<_$_Event> get copyWith =>
      __$$_EventCopyWithImpl<_$_Event>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventToJson(
      this,
    );
  }
}

abstract class _Event implements Event {
  const factory _Event(
          {required final String id,
          required final String name,
          @JsonKey(name: 'imageUrl') required final Uri? image,
          required final Uri? website,
          @JsonKey(name: 'type', unknownEnumValue: EventType.unknown)
          final EventType type,
          @JsonKey(readValue: _readEventDetails) final EventDetails details}) =
      _$_Event;

  factory _Event.fromJson(Map<String, dynamic> json) = _$_Event.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'imageUrl')
  Uri? get image;
  @override
  Uri? get website;
  @override
  @JsonKey(name: 'type', unknownEnumValue: EventType.unknown)
  EventType get type;
  @override
  @JsonKey(readValue: _readEventDetails)
  EventDetails get details;
  @override
  @JsonKey(ignore: true)
  _$$_EventCopyWith<_$_Event> get copyWith =>
      throw _privateConstructorUsedError;
}
