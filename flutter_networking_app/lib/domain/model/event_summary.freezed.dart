// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventSummary _$EventSummaryFromJson(Map<String, dynamic> json) {
  return _EventSummary.fromJson(json);
}

/// @nodoc
mixin _$EventSummary {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'type', unknownEnumValue: EventType.unknown)
  EventType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageUrl')
  Uri? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'startDate')
  @DateTimeToDashedStringConverter()
  DateTime? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'endDate')
  @dateTimeToDashedStringConverter
  DateTime? get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventSummaryCopyWith<EventSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventSummaryCopyWith<$Res> {
  factory $EventSummaryCopyWith(
          EventSummary value, $Res Function(EventSummary) then) =
      _$EventSummaryCopyWithImpl<$Res, EventSummary>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'type', unknownEnumValue: EventType.unknown)
      EventType type,
      @JsonKey(name: 'imageUrl') Uri? image,
      @JsonKey(name: 'startDate')
      @DateTimeToDashedStringConverter()
      DateTime? startDate,
      @JsonKey(name: 'endDate')
      @dateTimeToDashedStringConverter
      DateTime? endDate});
}

/// @nodoc
class _$EventSummaryCopyWithImpl<$Res, $Val extends EventSummary>
    implements $EventSummaryCopyWith<$Res> {
  _$EventSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? image = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EventType,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uri?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventSummaryCopyWith<$Res>
    implements $EventSummaryCopyWith<$Res> {
  factory _$$_EventSummaryCopyWith(
          _$_EventSummary value, $Res Function(_$_EventSummary) then) =
      __$$_EventSummaryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'type', unknownEnumValue: EventType.unknown)
      EventType type,
      @JsonKey(name: 'imageUrl') Uri? image,
      @JsonKey(name: 'startDate')
      @DateTimeToDashedStringConverter()
      DateTime? startDate,
      @JsonKey(name: 'endDate')
      @dateTimeToDashedStringConverter
      DateTime? endDate});
}

/// @nodoc
class __$$_EventSummaryCopyWithImpl<$Res>
    extends _$EventSummaryCopyWithImpl<$Res, _$_EventSummary>
    implements _$$_EventSummaryCopyWith<$Res> {
  __$$_EventSummaryCopyWithImpl(
      _$_EventSummary _value, $Res Function(_$_EventSummary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? image = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$_EventSummary(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EventType,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uri?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventSummary implements _EventSummary {
  const _$_EventSummary(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'type', unknownEnumValue: EventType.unknown)
      this.type = EventType.unknown,
      @JsonKey(name: 'imageUrl') required this.image,
      @JsonKey(name: 'startDate')
      @DateTimeToDashedStringConverter()
      required this.startDate,
      @JsonKey(name: 'endDate')
      @dateTimeToDashedStringConverter
      required this.endDate});

  factory _$_EventSummary.fromJson(Map<String, dynamic> json) =>
      _$$_EventSummaryFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'type', unknownEnumValue: EventType.unknown)
  final EventType type;
  @override
  @JsonKey(name: 'imageUrl')
  final Uri? image;
  @override
  @JsonKey(name: 'startDate')
  @DateTimeToDashedStringConverter()
  final DateTime? startDate;
  @override
  @JsonKey(name: 'endDate')
  @dateTimeToDashedStringConverter
  final DateTime? endDate;

  @override
  String toString() {
    return 'EventSummary(id: $id, name: $name, type: $type, image: $image, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventSummary &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, type, image, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventSummaryCopyWith<_$_EventSummary> get copyWith =>
      __$$_EventSummaryCopyWithImpl<_$_EventSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventSummaryToJson(
      this,
    );
  }
}

abstract class _EventSummary implements EventSummary {
  const factory _EventSummary(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'name') final String name,
      @JsonKey(name: 'type', unknownEnumValue: EventType.unknown)
      final EventType type,
      @JsonKey(name: 'imageUrl') required final Uri? image,
      @JsonKey(name: 'startDate')
      @DateTimeToDashedStringConverter()
      required final DateTime? startDate,
      @JsonKey(name: 'endDate')
      @dateTimeToDashedStringConverter
      required final DateTime? endDate}) = _$_EventSummary;

  factory _EventSummary.fromJson(Map<String, dynamic> json) =
      _$_EventSummary.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'type', unknownEnumValue: EventType.unknown)
  EventType get type;
  @override
  @JsonKey(name: 'imageUrl')
  Uri? get image;
  @override
  @JsonKey(name: 'startDate')
  @DateTimeToDashedStringConverter()
  DateTime? get startDate;
  @override
  @JsonKey(name: 'endDate')
  @dateTimeToDashedStringConverter
  DateTime? get endDate;
  @override
  @JsonKey(ignore: true)
  _$$_EventSummaryCopyWith<_$_EventSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
