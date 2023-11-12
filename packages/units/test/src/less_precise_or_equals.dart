import 'dart:math';

import 'package:flutter_test/flutter_test.dart';

Matcher lessPreciseOrEquals(double value) {
  // print("value: $value, epsilon: ${_getEpsilon(value)}, precision: ${_getPrecision(value)}");
  return moreOrLessEquals(value, epsilon: _getEpsilon(value));
}

double _getEpsilon(double number) => 1 / (pow(10, _getPrecision(number)));

int _getPrecision(double number) {
  /* trailing zeroes */
  var regex = RegExp(r"([.]*0)(?!.*\d)");

  var numString = number.toString().replaceAll(regex, "");
  int decimalPosition = numString.indexOf('.');
  return decimalPosition < 0 ? 0 : numString.length - decimalPosition - 1;
}