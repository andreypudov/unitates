import 'dart:math';

import 'package:flutter_test/flutter_test.dart';

Matcher lessPreciseOrEquals(double value) {
  var epsilon = _getEpsilon(value);
  return moreOrLessEquals(value, epsilon: epsilon);
}

double _getEpsilon(double number) => (number.truncate() == number)
    ? pow(10, _getIntegerPrecision(number)).toDouble()
    : 1 / (pow(10, _getFloatingPrecision(number)));

int _getIntegerPrecision(double number) {
  var grade = 0;

  while (number % 10 == 0) {
    grade++;
    number /= 10;
  }

  return grade;
}

int _getFloatingPrecision(double number) {
  /* trailing zeroes */
  var regex = RegExp(r"([.]*0)(?!.*\d)");

  var numString = number.toString().replaceAll(regex, "");
  int decimalPosition = numString.indexOf('.');

  return decimalPosition < 0 ? 0 : numString.length - decimalPosition - 1;
}