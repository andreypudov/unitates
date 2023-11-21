import 'package:flutter_test/flutter_test.dart';

import 'package:units/plane_angle.dart';
import 'package:units/plane_angle_unit.dart';

import 'src/less_precise_or_equals.dart';

void main() {
  group("should convert correctly", () {
    Map<PlaneAngle, List<double>> implementation = {
      /*                                                           “                      °                     gon                   mrad                     ′                    rad */
      PlaneAngle(1, PlaneAngleUnit.arcsecond):   [                 1, 0.0002777777777777778, 0.00030864197530864197, 0.0048481368110953596, 0.016666666666666666, 4.8481368110953596e-6],
      PlaneAngle(1, PlaneAngleUnit.degree):      [              3600,                     1,     1.1111111111111112,    17.453292519943297,                   60,  0.017453292519943295],
      PlaneAngle(1, PlaneAngleUnit.gradian):     [              3240,                   0.9,                      1,    15.707963267948967,                   54,  0.015707963267948967],
      PlaneAngle(1, PlaneAngleUnit.milliradian): [206.26480624709637,  0.057295779513082325,    0.06366197723675814,                      1,  3.4377467707849396,                 0.001],
      PlaneAngle(1, PlaneAngleUnit.minuteOfArc): [                60,  0.016666666666666666,   0.018518518518518517,    0.29088820866572157,                   1, 0.0002908882086657216],
      PlaneAngle(1, PlaneAngleUnit.radian):      [206264.80624709636,     57.29577951308232,      63.66197723675813,                   1000,  3437.7467707849396,                     1],
    };

    Map<PlaneAngle, List<double>> requirements = {
      /*                                                           “                      °                     gon                   mrad                     ′                    rad */
      PlaneAngle(1, PlaneAngleUnit.arcsecond):   [                 1,           0.000277778,            0.000308642,            0.00484814,            0.0166667,             4.8481e-6],
      PlaneAngle(1, PlaneAngleUnit.degree):      [              3600,                     1,                1.11111,               17.4533,                   60,             0.0174533],
      PlaneAngle(1, PlaneAngleUnit.gradian):     [              3240,                   0.9,                      1,                15.708,                   54,              0.015708],
      PlaneAngle(1, PlaneAngleUnit.milliradian): [           206.265,             0.0572958,               0.063662,                     1,              3.43775,                 0.001],
      PlaneAngle(1, PlaneAngleUnit.minuteOfArc): [                60,             0.0166667,              0.0185185,              0.290888,                    1,           0.000290888],
      PlaneAngle(1, PlaneAngleUnit.radian):      [            206265,               57.2958,                 63.662,                  1000,              3437.75,                     1],
    };

    test("should cover supported units", () {
      expect(PlaneAngleUnit.values.length, implementation.values.first.length);
      expect(PlaneAngleUnit.values.length, requirements.values.first.length);
    });

    implementation.forEach((actual, expected) {
      test("$actual should convert exactly", () {
        expect(actual.to(PlaneAngleUnit.arcsecond).value, expected[0]);
        expect(actual.to(PlaneAngleUnit.degree).value, expected[1]);
        expect(actual.to(PlaneAngleUnit.gradian).value, expected[2]);
        expect(actual.to(PlaneAngleUnit.milliradian).value, expected[3]);
        expect(actual.to(PlaneAngleUnit.minuteOfArc).value, expected[4]);
        expect(actual.to(PlaneAngleUnit.radian).value, expected[5]);
      });
    });

    requirements.forEach((actual, expected) {
      test("$actual should convert closely", () {
        expect(actual.to(PlaneAngleUnit.arcsecond).value, lessPreciseOrEquals(expected[0]));
        expect(actual.to(PlaneAngleUnit.degree).value, lessPreciseOrEquals(expected[1]));
        expect(actual.to(PlaneAngleUnit.gradian).value, lessPreciseOrEquals(expected[2]));
        expect(actual.to(PlaneAngleUnit.milliradian).value, lessPreciseOrEquals(expected[3]));
        expect(actual.to(PlaneAngleUnit.minuteOfArc).value, lessPreciseOrEquals(expected[4]));
        expect(actual.to(PlaneAngleUnit.radian).value, lessPreciseOrEquals(expected[5]));
      });
    });

    test("should use standard symbols", () {
      expect(PlaneAngle(1, PlaneAngleUnit.arcsecond).toString(), "1.0 “");
      expect(PlaneAngle(1, PlaneAngleUnit.degree).toString(), "1.0 °");
      expect(PlaneAngle(1, PlaneAngleUnit.gradian).toString(), "1.0 gon");
      expect(PlaneAngle(1, PlaneAngleUnit.milliradian).toString(), "1.0 mrad");
      expect(PlaneAngle(1, PlaneAngleUnit.minuteOfArc).toString(), "1.0 ′");
      expect(PlaneAngle(1, PlaneAngleUnit.radian).toString(), "1.0 rad");
    });
  });
}
