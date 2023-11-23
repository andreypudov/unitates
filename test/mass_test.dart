import 'package:flutter_test/flutter_test.dart';

import 'package:units/mass.dart';
import 'package:units/mass_unit.dart';

import 'src/less_precise_or_equals.dart';

void main() {
  group("should convert correctly", () {
    Map<Mass, List<double>> implementation = {
      /* */
    };

    Map<Mass, List<double>> requirements = {
      /* */
      Mass(1, MassUnit.metricTon):   [1, 1000, 1e+6, 1e+9, 1e+12, 0.984207, 1.10231, 157.473, 2204.62, 35274],
      Mass(1, MassUnit.kilogram):    [0.001, 1, 1000, 1e+6, 1e+9, 0.000984207, 0.00110231, 0.157473, 2.20462, 35.274],
      Mass(1, MassUnit.gram):        [1e-6, 0.001, 1, 1000, 1e+6, 9.8421e-7, 1.1023e-6, 0.000157473, 0.00220462, 0.035274],
      Mass(1, MassUnit.milligram):   [1e-9, 1e-6, 0.001, 1, 1000, 9.8421e-10, 1.1023e-9, 1.5747e-7, 2.2046e-6, 3.5274e-5],
      Mass(1, MassUnit.microgram):   [1e-12, 1e-9, 1e-6, 0.001, 1, 9.8421e-13, 1.1023e-12, 1.5747e-10, 2.2046e-9, 3.5274e-8],
      Mass(1, MassUnit.imperialTon): [1.01605, 1016.05, 1.016e+6, 1.016e+9, 1.016e+12, 1, 1.12, 160, 2240, 35840],
      Mass(1, MassUnit.usTon):       [0.907185, 907.185, 907185, 9.072e+8, 9.072e+11, 0.892857, 1, 142.857, 2000, 32000],
      Mass(1, MassUnit.stone):       [0.00635029, 6.35029, 6350.29, 6.35e+6, 6.35e+9, 0.00625, 0.007, 1, 14, 224],
      Mass(1, MassUnit.pound):       [0.000453592, 0.453592, 453.592, 453592, 4.536e+8, 0.000446429, 0.0005, 0.0714286, 1, 16],
      Mass(1, MassUnit.ounce):       [2.835e-5, 0.0283495, 28.3495, 28349.5, 2.835e+7, 2.7902e-5, 3.125e-5, 0.00446429, 0.0625, 1],
    };

    test("should cover supported units", () {
      //expect(MassUnit.values.length, implementation.values.first.length);
      expect(MassUnit.values.length, requirements.values.first.length);
    });

    implementation.forEach((actual, expected) {
      test("$actual should convert exactly", () {
        expect(actual.to(MassUnit.metricTon).value, expected[0]);
        expect(actual.to(MassUnit.kilogram).value, expected[1]);
        expect(actual.to(MassUnit.gram).value, expected[2]);
        expect(actual.to(MassUnit.milligram).value, expected[3]);
        expect(actual.to(MassUnit.microgram).value, expected[4]);
        expect(actual.to(MassUnit.imperialTon).value, expected[5]);
        expect(actual.to(MassUnit.usTon).value, expected[6]);
        expect(actual.to(MassUnit.stone).value, expected[7]);
        expect(actual.to(MassUnit.pound).value, expected[8]);
        expect(actual.to(MassUnit.ounce).value, expected[9]);
      });
    });

    requirements.forEach((actual, expected) {
      test("$actual should convert closely", () {
        expect(actual.to(MassUnit.metricTon).value, lessPreciseOrEquals(expected[0]));
        expect(actual.to(MassUnit.kilogram).value, lessPreciseOrEquals(expected[1]));
        expect(actual.to(MassUnit.gram).value, lessPreciseOrEquals(expected[2]));
        expect(actual.to(MassUnit.milligram).value, lessPreciseOrEquals(expected[3]));
        expect(actual.to(MassUnit.microgram).value, lessPreciseOrEquals(expected[4]));
        expect(actual.to(MassUnit.imperialTon).value, lessPreciseOrEquals(expected[5]));
        expect(actual.to(MassUnit.usTon).value, lessPreciseOrEquals(expected[6]));
        expect(actual.to(MassUnit.stone).value, lessPreciseOrEquals(expected[7]));
        expect(actual.to(MassUnit.pound).value, lessPreciseOrEquals(expected[8]));
        expect(actual.to(MassUnit.ounce).value, lessPreciseOrEquals(expected[9]));
      });
    });

    test("should use standard symbols", () {
      expect(Mass(1, MassUnit.metricTon).toString(), "1.0 t");
      expect(Mass(1, MassUnit.kilogram).toString(), "1.0 kg");
      expect(Mass(1, MassUnit.gram).toString(), "1.0 g");
      expect(Mass(1, MassUnit.milligram).toString(), "1.0 mg");
      expect(Mass(1, MassUnit.microgram).toString(), "1.0 µg");
      expect(Mass(1, MassUnit.imperialTon).toString(), "1.0 LT");
      expect(Mass(1, MassUnit.usTon).toString(), "1.0 tn");
      expect(Mass(1, MassUnit.stone).toString(), "1.0 st");
      expect(Mass(1, MassUnit.pound).toString(), "1.0 lb");
      expect(Mass(1, MassUnit.ounce).toString(), "1.0 oz");
    });
  });
}
