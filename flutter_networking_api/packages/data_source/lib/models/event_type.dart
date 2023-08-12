import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum EventType {
  @JsonValue('CONF')
  conference,
  @JsonValue('MEETUP')
  meetup,
  @JsonValue('DEV_FEST')
  devfest,
}
