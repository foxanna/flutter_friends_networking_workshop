// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventLocation {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String streamUrl) online,
    required TResult Function(String address) inPerson,
    required TResult Function(String address, String streamUrl) hybrid,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String streamUrl)? online,
    TResult? Function(String address)? inPerson,
    TResult? Function(String address, String streamUrl)? hybrid,
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String streamUrl)? online,
    TResult Function(String address)? inPerson,
    TResult Function(String address, String streamUrl)? hybrid,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineEventLocation value) online,
    required TResult Function(InPersonEventLocation value) inPerson,
    required TResult Function(HybridEventLocation value) hybrid,
    required TResult Function(UnknownEventLocation value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnlineEventLocation value)? online,
    TResult? Function(InPersonEventLocation value)? inPerson,
    TResult? Function(HybridEventLocation value)? hybrid,
    TResult? Function(UnknownEventLocation value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineEventLocation value)? online,
    TResult Function(InPersonEventLocation value)? inPerson,
    TResult Function(HybridEventLocation value)? hybrid,
    TResult Function(UnknownEventLocation value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventLocationCopyWith<$Res> {
  factory $EventLocationCopyWith(
          EventLocation value, $Res Function(EventLocation) then) =
      _$EventLocationCopyWithImpl<$Res, EventLocation>;
}

/// @nodoc
class _$EventLocationCopyWithImpl<$Res, $Val extends EventLocation>
    implements $EventLocationCopyWith<$Res> {
  _$EventLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnlineEventLocationCopyWith<$Res> {
  factory _$$OnlineEventLocationCopyWith(_$OnlineEventLocation value,
          $Res Function(_$OnlineEventLocation) then) =
      __$$OnlineEventLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({String streamUrl});
}

/// @nodoc
class __$$OnlineEventLocationCopyWithImpl<$Res>
    extends _$EventLocationCopyWithImpl<$Res, _$OnlineEventLocation>
    implements _$$OnlineEventLocationCopyWith<$Res> {
  __$$OnlineEventLocationCopyWithImpl(
      _$OnlineEventLocation _value, $Res Function(_$OnlineEventLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streamUrl = null,
  }) {
    return _then(_$OnlineEventLocation(
      streamUrl: null == streamUrl
          ? _value.streamUrl
          : streamUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnlineEventLocation implements OnlineEventLocation {
  const _$OnlineEventLocation({required this.streamUrl});

  @override
  final String streamUrl;

  @override
  String toString() {
    return 'EventLocation.online(streamUrl: $streamUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlineEventLocation &&
            (identical(other.streamUrl, streamUrl) ||
                other.streamUrl == streamUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, streamUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlineEventLocationCopyWith<_$OnlineEventLocation> get copyWith =>
      __$$OnlineEventLocationCopyWithImpl<_$OnlineEventLocation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String streamUrl) online,
    required TResult Function(String address) inPerson,
    required TResult Function(String address, String streamUrl) hybrid,
    required TResult Function() unknown,
  }) {
    return online(streamUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String streamUrl)? online,
    TResult? Function(String address)? inPerson,
    TResult? Function(String address, String streamUrl)? hybrid,
    TResult? Function()? unknown,
  }) {
    return online?.call(streamUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String streamUrl)? online,
    TResult Function(String address)? inPerson,
    TResult Function(String address, String streamUrl)? hybrid,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (online != null) {
      return online(streamUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineEventLocation value) online,
    required TResult Function(InPersonEventLocation value) inPerson,
    required TResult Function(HybridEventLocation value) hybrid,
    required TResult Function(UnknownEventLocation value) unknown,
  }) {
    return online(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnlineEventLocation value)? online,
    TResult? Function(InPersonEventLocation value)? inPerson,
    TResult? Function(HybridEventLocation value)? hybrid,
    TResult? Function(UnknownEventLocation value)? unknown,
  }) {
    return online?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineEventLocation value)? online,
    TResult Function(InPersonEventLocation value)? inPerson,
    TResult Function(HybridEventLocation value)? hybrid,
    TResult Function(UnknownEventLocation value)? unknown,
    required TResult orElse(),
  }) {
    if (online != null) {
      return online(this);
    }
    return orElse();
  }
}

abstract class OnlineEventLocation implements EventLocation {
  const factory OnlineEventLocation({required final String streamUrl}) =
      _$OnlineEventLocation;

  String get streamUrl;
  @JsonKey(ignore: true)
  _$$OnlineEventLocationCopyWith<_$OnlineEventLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InPersonEventLocationCopyWith<$Res> {
  factory _$$InPersonEventLocationCopyWith(_$InPersonEventLocation value,
          $Res Function(_$InPersonEventLocation) then) =
      __$$InPersonEventLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({String address});
}

/// @nodoc
class __$$InPersonEventLocationCopyWithImpl<$Res>
    extends _$EventLocationCopyWithImpl<$Res, _$InPersonEventLocation>
    implements _$$InPersonEventLocationCopyWith<$Res> {
  __$$InPersonEventLocationCopyWithImpl(_$InPersonEventLocation _value,
      $Res Function(_$InPersonEventLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$InPersonEventLocation(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InPersonEventLocation implements InPersonEventLocation {
  const _$InPersonEventLocation({required this.address});

  @override
  final String address;

  @override
  String toString() {
    return 'EventLocation.inPerson(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InPersonEventLocation &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InPersonEventLocationCopyWith<_$InPersonEventLocation> get copyWith =>
      __$$InPersonEventLocationCopyWithImpl<_$InPersonEventLocation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String streamUrl) online,
    required TResult Function(String address) inPerson,
    required TResult Function(String address, String streamUrl) hybrid,
    required TResult Function() unknown,
  }) {
    return inPerson(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String streamUrl)? online,
    TResult? Function(String address)? inPerson,
    TResult? Function(String address, String streamUrl)? hybrid,
    TResult? Function()? unknown,
  }) {
    return inPerson?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String streamUrl)? online,
    TResult Function(String address)? inPerson,
    TResult Function(String address, String streamUrl)? hybrid,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (inPerson != null) {
      return inPerson(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineEventLocation value) online,
    required TResult Function(InPersonEventLocation value) inPerson,
    required TResult Function(HybridEventLocation value) hybrid,
    required TResult Function(UnknownEventLocation value) unknown,
  }) {
    return inPerson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnlineEventLocation value)? online,
    TResult? Function(InPersonEventLocation value)? inPerson,
    TResult? Function(HybridEventLocation value)? hybrid,
    TResult? Function(UnknownEventLocation value)? unknown,
  }) {
    return inPerson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineEventLocation value)? online,
    TResult Function(InPersonEventLocation value)? inPerson,
    TResult Function(HybridEventLocation value)? hybrid,
    TResult Function(UnknownEventLocation value)? unknown,
    required TResult orElse(),
  }) {
    if (inPerson != null) {
      return inPerson(this);
    }
    return orElse();
  }
}

abstract class InPersonEventLocation implements EventLocation {
  const factory InPersonEventLocation({required final String address}) =
      _$InPersonEventLocation;

  String get address;
  @JsonKey(ignore: true)
  _$$InPersonEventLocationCopyWith<_$InPersonEventLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HybridEventLocationCopyWith<$Res> {
  factory _$$HybridEventLocationCopyWith(_$HybridEventLocation value,
          $Res Function(_$HybridEventLocation) then) =
      __$$HybridEventLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({String address, String streamUrl});
}

/// @nodoc
class __$$HybridEventLocationCopyWithImpl<$Res>
    extends _$EventLocationCopyWithImpl<$Res, _$HybridEventLocation>
    implements _$$HybridEventLocationCopyWith<$Res> {
  __$$HybridEventLocationCopyWithImpl(
      _$HybridEventLocation _value, $Res Function(_$HybridEventLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? streamUrl = null,
  }) {
    return _then(_$HybridEventLocation(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      streamUrl: null == streamUrl
          ? _value.streamUrl
          : streamUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HybridEventLocation implements HybridEventLocation {
  const _$HybridEventLocation({required this.address, required this.streamUrl});

  @override
  final String address;
  @override
  final String streamUrl;

  @override
  String toString() {
    return 'EventLocation.hybrid(address: $address, streamUrl: $streamUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HybridEventLocation &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.streamUrl, streamUrl) ||
                other.streamUrl == streamUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, streamUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HybridEventLocationCopyWith<_$HybridEventLocation> get copyWith =>
      __$$HybridEventLocationCopyWithImpl<_$HybridEventLocation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String streamUrl) online,
    required TResult Function(String address) inPerson,
    required TResult Function(String address, String streamUrl) hybrid,
    required TResult Function() unknown,
  }) {
    return hybrid(address, streamUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String streamUrl)? online,
    TResult? Function(String address)? inPerson,
    TResult? Function(String address, String streamUrl)? hybrid,
    TResult? Function()? unknown,
  }) {
    return hybrid?.call(address, streamUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String streamUrl)? online,
    TResult Function(String address)? inPerson,
    TResult Function(String address, String streamUrl)? hybrid,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (hybrid != null) {
      return hybrid(address, streamUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineEventLocation value) online,
    required TResult Function(InPersonEventLocation value) inPerson,
    required TResult Function(HybridEventLocation value) hybrid,
    required TResult Function(UnknownEventLocation value) unknown,
  }) {
    return hybrid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnlineEventLocation value)? online,
    TResult? Function(InPersonEventLocation value)? inPerson,
    TResult? Function(HybridEventLocation value)? hybrid,
    TResult? Function(UnknownEventLocation value)? unknown,
  }) {
    return hybrid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineEventLocation value)? online,
    TResult Function(InPersonEventLocation value)? inPerson,
    TResult Function(HybridEventLocation value)? hybrid,
    TResult Function(UnknownEventLocation value)? unknown,
    required TResult orElse(),
  }) {
    if (hybrid != null) {
      return hybrid(this);
    }
    return orElse();
  }
}

abstract class HybridEventLocation implements EventLocation {
  const factory HybridEventLocation(
      {required final String address,
      required final String streamUrl}) = _$HybridEventLocation;

  String get address;
  String get streamUrl;
  @JsonKey(ignore: true)
  _$$HybridEventLocationCopyWith<_$HybridEventLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownEventLocationCopyWith<$Res> {
  factory _$$UnknownEventLocationCopyWith(_$UnknownEventLocation value,
          $Res Function(_$UnknownEventLocation) then) =
      __$$UnknownEventLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownEventLocationCopyWithImpl<$Res>
    extends _$EventLocationCopyWithImpl<$Res, _$UnknownEventLocation>
    implements _$$UnknownEventLocationCopyWith<$Res> {
  __$$UnknownEventLocationCopyWithImpl(_$UnknownEventLocation _value,
      $Res Function(_$UnknownEventLocation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownEventLocation implements UnknownEventLocation {
  const _$UnknownEventLocation();

  @override
  String toString() {
    return 'EventLocation.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownEventLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String streamUrl) online,
    required TResult Function(String address) inPerson,
    required TResult Function(String address, String streamUrl) hybrid,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String streamUrl)? online,
    TResult? Function(String address)? inPerson,
    TResult? Function(String address, String streamUrl)? hybrid,
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String streamUrl)? online,
    TResult Function(String address)? inPerson,
    TResult Function(String address, String streamUrl)? hybrid,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineEventLocation value) online,
    required TResult Function(InPersonEventLocation value) inPerson,
    required TResult Function(HybridEventLocation value) hybrid,
    required TResult Function(UnknownEventLocation value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnlineEventLocation value)? online,
    TResult? Function(InPersonEventLocation value)? inPerson,
    TResult? Function(HybridEventLocation value)? hybrid,
    TResult? Function(UnknownEventLocation value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineEventLocation value)? online,
    TResult Function(InPersonEventLocation value)? inPerson,
    TResult Function(HybridEventLocation value)? hybrid,
    TResult Function(UnknownEventLocation value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownEventLocation implements EventLocation {
  const factory UnknownEventLocation() = _$UnknownEventLocation;
}
