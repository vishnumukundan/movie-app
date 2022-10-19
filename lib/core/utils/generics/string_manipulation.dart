// ignore_for_file: unrelated_type_equality_checks

import 'package:intl/intl.dart';

class StringExtraction {
  static toYear(String stringDate) {
    assert(stringDate.length >= 10, 'toYear: json data error');
    final String year = stringDate.substring(0, 4);
    return year;
  }

  static toMonthNumber(String stringDate) {
    assert(stringDate.length >= 10, 'toMonthNumber: json data error');
    final String monthNumber = stringDate.substring(5, 7);
    return monthNumber;
  }

  static toMonthText(String stringDate) {
    assert(stringDate.length >= 10, 'toMonthText: json data error');
    String monthString = toMonthNumber(stringDate);
    int monthNumber = int.parse(monthString);
    String monthText = DateFormat('MMM').format(DateTime(0, monthNumber));
    return monthText;
  }

  static toDay(String stringDate) {
    assert(stringDate.length >= 10, 'toDay: json data error');
    final String day = stringDate.substring(8, 10);
    return day;
  }

  static toMovieRating(String string) {
    final padLeft = string.padLeft(5, "0");
    assert(padLeft.length >= 5, 'toMovieRating: json data error');
    final String rating = padLeft.substring(0, 4);
    return rating;
  }
}

// 2022-06-11