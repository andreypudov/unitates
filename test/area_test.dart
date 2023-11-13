import 'package:flutter_test/flutter_test.dart';

import 'package:units/area.dart';
import 'package:units/area_unit.dart';

import 'src/less_precise_or_equals.dart';

void main() {
  group("should convert correctly", () {
    Map<Area, List<double>> implementation = {
      /*                                             km²             m²                   mi²                    yd²                   ft²              in²              ha                    ac */
      Area(1, AreaUnit.squareKilometer): [             1,          1e+6,   0.3861021585424458,      1195990.04630108,       10763910.41671, 1550003100.0062,            100,     247.1053814671653],
      Area(1, AreaUnit.squareMeter):     [          1e-6,             1, 3.861021585424458e-7,      1.19599004630108,       10.76391041671, 1550.0031000062,           1e-4, 0.0002471053814671653],
      Area(1, AreaUnit.squareMile):      [2.589988110336, 2589988.11033,                    1,        3097599.999598,      27878399.996383, 4014489599.4792, 258.9988110336,                   640],
      Area(1, AreaUnit.squareYard):      [  8.3612736e-7,    0.83612736, 3.228305785123967e-7,                     1,                    9,            1296,   8.3612736e-5,  2.066115702479339e-4],
      Area(1, AreaUnit.squareFoot):      [   9.290304e-8,    0.09290304,    3.587006427915e-8,    0.1111111111111111,                    1,             144,    9.290304e-6,  2.295684113865932e-5],
      Area(1, AreaUnit.squareInch):      [    6.4516e-10,    0.00064516,   2.490976686052e-10, 0.0007716049382716049, 0.006944444444444444,               1,      6.4516e-8,     1.594225079073e-7],
      Area(1, AreaUnit.hectare):         [          0.01,         10000, 0.003861021585424458,      11959.9004630108,       107639.1041671, 15500031.000062,              1,     2.471053814671653],
      Area(1, AreaUnit.acre):            [0.004046856422,   4046.856422,            0.0015625,                  4840,                43560,     6.272640e+6,   0.4046856422,                     1],
    };

    Map<Area, List<double>> requirements = {
      /*                                             km²             m²                   mi²                    yd²                   ft²              in²              ha                    ac */
      Area(1, AreaUnit.squareKilometer): [             1,          1e+6,             0.386102,            1.19599e+6,          1.076391e+7,    1.5500031e+9,            100,                247.105],
      Area(1, AreaUnit.squareMeter):     [          1e-6,             1,             3.861e-7,               1.19599,              10.7639,            1550,           1e-4,            0.000247105],
      Area(1, AreaUnit.squareMile):      [       2.58999,   2.589988e+6,                    1,           3.097599e+6,         2.7878399e+7,  4.014489599e+9,        258.999,                    640],
      Area(1, AreaUnit.squareYard):      [     8.3613e-7,      0.836127,            3.2283e-7,                     1,                    9,            1296,      8.3613e-5,            0.000206612],
      Area(1, AreaUnit.squareFoot):      [     9.2903e-8,      0.092903,             3.587e-8,              0.111111,                    1,             144,      9.2903e-6,              2.2957e-5],
      Area(1, AreaUnit.squareInch):      [    6.4516e-10,    0.00064516,            2.491e-10,           0.000771605,           0.00694444,               1,      6.4516e-8,              1.5942e-7],
      Area(1, AreaUnit.hectare):         [          0.01,         10000,           0.00386102,               11959.9,               107639,    1.5500031e+7,              1,                2.47105],
      Area(1, AreaUnit.acre):            [    0.00404686,       4046.86,            0.0015625,                  4840,                43560,     6.272640e+6,       0.404686,                      1],
    };

    test("should cover supported units", () {
      expect(AreaUnit.values.length, implementation.values.first.length);
      expect(AreaUnit.values.length, requirements.values.first.length);
    });

    implementation.forEach((actual, expected) {
      test("$actual should convert exactly", () {
        expect(actual.to(AreaUnit.squareKilometer).value, expected[0]);
        expect(actual.to(AreaUnit.squareMeter).value, expected[1]);
        expect(actual.to(AreaUnit.squareMile).value, expected[2]);
        expect(actual.to(AreaUnit.squareYard).value, expected[3]);
        expect(actual.to(AreaUnit.squareFoot).value, expected[4]);
        expect(actual.to(AreaUnit.squareInch).value, expected[5]);
        expect(actual.to(AreaUnit.hectare).value, expected[6]);
        expect(actual.to(AreaUnit.acre).value, expected[7]);
      });
    });

    requirements.forEach((actual, expected) {
      test("$actual should convert closely", () {
        expect(actual.to(AreaUnit.squareKilometer).value, lessPreciseOrEquals(expected[0]));
        expect(actual.to(AreaUnit.squareMeter).value, lessPreciseOrEquals(expected[1]));
        expect(actual.to(AreaUnit.squareMile).value, lessPreciseOrEquals(expected[2]));
        expect(actual.to(AreaUnit.squareYard).value, lessPreciseOrEquals(expected[3]));
        expect(actual.to(AreaUnit.squareFoot).value, lessPreciseOrEquals(expected[4]));
        expect(actual.to(AreaUnit.squareInch).value, lessPreciseOrEquals(expected[5]));
        expect(actual.to(AreaUnit.hectare).value, lessPreciseOrEquals(expected[6]));
        expect(actual.to(AreaUnit.acre).value, lessPreciseOrEquals(expected[7]));
      });
    });

    test("should use standard symbols", () {
      expect(Area(1, AreaUnit.squareKilometer).toString(), "1.0 km²");
      expect(Area(1, AreaUnit.squareMeter).toString(), "1.0 m²");
      expect(Area(1, AreaUnit.squareMile).toString(), "1.0 mi²");
      expect(Area(1, AreaUnit.squareYard).toString(), "1.0 yd²");
      expect(Area(1, AreaUnit.squareFoot).toString(), "1.0 ft²");
      expect(Area(1, AreaUnit.squareInch).toString(), "1.0 in²");
      expect(Area(1, AreaUnit.hectare).toString(), "1.0 ha");
      expect(Area(1, AreaUnit.acre).toString(), "1.0 ac");
    });
  });
}
