import 'package:flutter_test/flutter_test.dart';

import 'package:units/temperature.dart';
import 'package:units/temperature_unit.dart';

import 'src/less_precise_or_equals.dart';

void main() {
  group("should convert correctly", () {
    Map<Temperature, List<double>> implementation = {
      /*                                                           °C        °F                   K */
      Temperature(1, TemperatureUnit.celsius):    [                 1,     33.8,             274.15],
      Temperature(1, TemperatureUnit.fahrenheit): [-17.22222222222222,        1, 255.92777777777775],
      Temperature(1, TemperatureUnit.kelvin):     [           -272.15,  -457.87,                  1],
    };

    Map<Temperature, List<double>> requirements = {
      /*                                                           °C        °F                   K */
      Temperature(1, TemperatureUnit.celsius):    [                 1,     33.8,             274.15],
      Temperature(1, TemperatureUnit.fahrenheit): [          -17.2222,        1,            255.928],
      Temperature(1, TemperatureUnit.kelvin):     [           -272.15,  -457.87,                  1],
    };

    test("should cover supported units", () {
      expect(TemperatureUnit.values.length, implementation.values.first.length);
      expect(TemperatureUnit.values.length, requirements.values.first.length);
    });

    implementation.forEach((actual, expected) {
      test("$actual should convert exactly", () {
        expect(actual.to(TemperatureUnit.celsius).value, expected[0]);
        expect(actual.to(TemperatureUnit.fahrenheit).value, expected[1]);
        expect(actual.to(TemperatureUnit.kelvin).value, expected[2]);
      });
    });

    requirements.forEach((actual, expected) {
      test("$actual should convert closely", () {
        expect(actual.to(TemperatureUnit.celsius).value, lessPreciseOrEquals(expected[0]));
        expect(actual.to(TemperatureUnit.fahrenheit).value, lessPreciseOrEquals(expected[1]));
        expect(actual.to(TemperatureUnit.kelvin).value, lessPreciseOrEquals(expected[2]));
      });
    });

    test("should use standard symbols", () {
      expect(Temperature(1, TemperatureUnit.celsius).toString(), "1.0 °C");
      expect(Temperature(1, TemperatureUnit.fahrenheit).toString(), "1.0 °F");
      expect(Temperature(1, TemperatureUnit.kelvin).toString(), "1.0 K");
    });
  });
}
