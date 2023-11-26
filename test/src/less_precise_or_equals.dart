import 'dart:math';

import 'package:flutter_test/flutter_test.dart';

Matcher lessPreciseOrEquals(double value) =>
    moreOrLessEquals(value, epsilon: _getEpsilon(value));

bool _isInteger(double number) => number % 1 == 0;

double _getEpsilon(double number) => _isInteger(number)
    ? BigInt.from(10).pow(_getIntegerPrecision(number)).toDouble()
    : 1 / (pow(10, _getFloatingPrecision(number)));

int _getIntegerPrecision(double number) {
  var grade = 0;
  var bigNumber = BigInt.from(number);

  if (bigNumber >= BigInt.from(double.maxFinite.toInt())) {
    return bigNumber.toString().length - 4;
  }

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