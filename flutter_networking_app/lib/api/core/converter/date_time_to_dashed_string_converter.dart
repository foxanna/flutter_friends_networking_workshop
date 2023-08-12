import 'package:json_annotation/json_annotation.dart';

const dateTimeToDashedStringConverter = DateTimeToDashedStringConverter();

class DateTimeToDashedStringConverter extends JsonConverter<DateTime, String> {
  const DateTimeToDashedStringConverter();

  @override
  DateTime fromJson(String json) {
    final dates = json.split('-');
    return DateTime.utc(
      int.parse(dates[0]),
      int.parse(dates[1]),
      int.parse(dates[2]),
    );
  }

  @override
  String toJson(DateTime object) => '${object.year}'
      '-${_twoDigits(object.month)}'
      '-${_twoDigits(object.day)}';

  static String _twoDigits(int n) => n >= 10 ? '$n' : '0$n';
}
