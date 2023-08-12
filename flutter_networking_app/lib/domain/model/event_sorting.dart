import 'package:json_annotation/json_annotation.dart';

part 'event_sorting.g.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.kebab)
enum EventSorting {
  byName,
  byDate;

  String? toJson() => _$EventSortingEnumMap[this];
}
