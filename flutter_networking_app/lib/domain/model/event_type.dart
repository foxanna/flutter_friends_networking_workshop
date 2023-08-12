import 'package:json_annotation/json_annotation.dart';

enum EventType {
  unknown,
  @JsonValue('CONF')
  conference,
  @JsonValue('MEETUP')
  meetup,
  @JsonValue('DEV_FEST')
  devfest,
}
