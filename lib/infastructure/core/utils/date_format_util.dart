import '../constants/date_formats.dart';

class DateFormatUtil {
  const DateFormatUtil._();

  static DateTime combineDateAndTime(DateTime date, DateTime time) {
    final parsedDate = dateMonthYearParsed(date);

    final parsedTime = hourMinuteSecondParsed(time);

    final fullDateTime = '$parsedDate $parsedTime';

    return fullDateFormatted(fullDateTime);
  }

  static String dateMonthNameYearParsed(DateTime date) {
    return DateFormats.dateMonthNameYear.format(date);
  }

  static String dateMonthNameParsed(DateTime date) {
    return DateFormats.dateMonthName.format(date);
  }

  static String hourMinuteMeridiemParsed(DateTime date) {
    return DateFormats.hourMinuteMeridiem.format(date);
  }

  static String dateMonthYearParsed(DateTime date) {
    return DateFormats.dateMonthYear.format(date);
  }

  static String abbrMonthDateYearParsed(DateTime date) {
    return DateFormats.abbrMonthDateYear.format(date);
  }

  static String hourMinuteParsed(DateTime date) {
    return DateFormats.hourMinute.format(date);
  }

  static DateTime hourMinuteFormatted(String date) {
    return DateFormats.hourMinute.parse(date);
  }

  static String hourMinuteSecondParsed(DateTime date) {
    return DateFormats.hourMinuteSecond.format(date);
  }

  static DateTime dateMonthYearFormatted(String date) {
    return DateFormats.dateMonthYear.parse(date);
  }

  static DateTime dateMonthNameYearFormatted(String date) {
    return DateFormats.dateMonthNameYear.parse(date);
  }

  static DateTime abbrMonthDateYearFormmated(String date) {
    return DateFormats.abbrMonthDateYear.parse(date);
  }

  static DateTime fullDateFormatted(String date) {
    return DateFormats.fullDateFormat.parse(date);
  }

  static DateTime get dateTimeNow => DateTime.now();

  static DateTime get initialDate => DateTime(2022, 12, 06);
}
