import 'package:json_annotation/json_annotation.dart';

const dateTimeToDashedStringConverter =
    DateTimeToSeparatedStringConverter(separator: '-');

const dateTimeToSlashedStringConverter =
    DateTimeToSeparatedStringConverter(separator: '/');

class DateTimeToSeparatedStringConverter
    extends JsonConverter<DateTime, String> {
  const DateTimeToSeparatedStringConverter({
    required this.separator,
  });

  final String separator;

  @override
  DateTime fromJson(String json) {
    final dates = json.split(separator);
    return DateTime.utc(
      int.parse(dates[0]),
      int.parse(dates[1]),
      int.parse(dates[2]),
    );
  }

  @override
  String toJson(DateTime object) => '${object.year}'
      '$separator'
      '${_twoDigits(object.month)}'
      '$separator'
      '${_twoDigits(object.day)}';

  static String _twoDigits(int n) => n >= 10 ? '$n' : '0$n';
}
