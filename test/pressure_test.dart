import 'package:flutter_test/flutter_test.dart';

import 'package:unitates/pressure.dart';
import 'package:unitates/pressure_unit.dart';

import 'src/less_precise_or_equals.dart';

void main() {
  group("should convert correctly", () {
    Map<Pressure, List<double>> implementation = {
      /*                                                      bar               Pa              psi                 atm              torr */
      Pressure(1, PressureUnit.bar):                [           1,          100000,    14.503773773,       0.9869232667,    750.061682704],
      Pressure(1, PressureUnit.pascal):             [        1e-5,               1,   0.00014503773, 9.8692326671601e-6, 0.00750061682704],
      Pressure(1, PressureUnit.poundPerSquareInch): [0.0689475729, 6894.7572931783,               1,       0.0680459639,    51.7149325716],
      Pressure(1, PressureUnit.standardAtmosphere): [     1.01325,          101325,   14.6959487755,                  1,   759.9999999998],
      Pressure(1, PressureUnit.torr):               [0.0013332237,  133.3223684211,    0.0193367747,       0.0013157895,                1],
    };

    Map<Pressure, List<double>> requirements = {
      /*                                                      bar               Pa              psi                 atm              torr */
      Pressure(1, PressureUnit.bar):                [           1,          100000,         14.5038,           0.986923,          750.062],
      Pressure(1, PressureUnit.pascal):             [        1e-5,               1,     0.000145038,          9.8692e-6,       0.00750062],
      Pressure(1, PressureUnit.poundPerSquareInch): [   0.0689476,         6894.76,               1,           0.068046,          51.7149],
      Pressure(1, PressureUnit.standardAtmosphere): [     1.01325,          101325,         14.6959,                  1,              760],
      Pressure(1, PressureUnit.torr):               [  0.00133322,         133.322,       0.0193368,         0.00131579,                1],
    };

    test("should cover supported units", () {
      expect(PressureUnit.values.length, implementation.values.first.length);
      expect(PressureUnit.values.length, requirements.values.first.length);
    });

    implementation.forEach((actual, expected) {
      test("$actual should convert exactly", () {
        expect(actual.to(PressureUnit.bar).value, expected[0]);
        expect(actual.to(PressureUnit.pascal).value, expected[1]);
        expect(actual.to(PressureUnit.poundPerSquareInch).value, expected[2]);
        expect(actual.to(PressureUnit.standardAtmosphere).value, expected[3]);
        expect(actual.to(PressureUnit.torr).value, expected[4]);
      });
    });

    requirements.forEach((actual, expected) {
      test("$actual should convert closely", () {
        expect(actual.to(PressureUnit.bar).value, lessPreciseOrEquals(expected[0]));
        expect(actual.to(PressureUnit.pascal).value, lessPreciseOrEquals(expected[1]));
        expect(actual.to(PressureUnit.poundPerSquareInch).value, lessPreciseOrEquals(expected[2]));
        expect(actual.to(PressureUnit.standardAtmosphere).value, lessPreciseOrEquals(expected[3]));
        expect(actual.to(PressureUnit.torr).value, lessPreciseOrEquals(expected[4]));
      });
    });

    test("should use standard symbols", () {
      expect(Pressure(1, PressureUnit.bar).toString(), "1.0 bar");
      expect(Pressure(1, PressureUnit.pascal).toString(), "1.0 Pa");
      expect(Pressure(1, PressureUnit.poundPerSquareInch).toString(), "1.0 psi");
      expect(Pressure(1, PressureUnit.standardAtmosphere).toString(), "1.0 atm");
      expect(Pressure(1, PressureUnit.torr).toString(), "1.0 torr");
    });
  });
}
