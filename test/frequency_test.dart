import 'package:flutter_test/flutter_test.dart';

import 'package:unitates/frequency.dart';
import 'package:unitates/frequency_unit.dart';

import 'src/less_precise_or_equals.dart';

void main() {
  group("should convert correctly", () {
    Map<Frequency, List<double>> implementation = {
      /*                                        Hz   kHz   MHz   GHz */
      Frequency(1, FrequencyUnit.hertz):     [   1, 1e-3, 1e-6, 1e-9],
      Frequency(1, FrequencyUnit.kilohertz): [1e+3,    1, 1e-3, 1e-6],
      Frequency(1, FrequencyUnit.megahertz): [1e+6, 1e+3,    1, 1e-3],
      Frequency(1, FrequencyUnit.gigahertz): [1e+9, 1e+6, 1e+3,    1],
    };

    Map<Frequency, List<double>> requirements = {
      /*                                        Hz   kHz   MHz   GHz */
      Frequency(1, FrequencyUnit.hertz):     [   1, 1e-3, 1e-6, 1e-9],
      Frequency(1, FrequencyUnit.kilohertz): [1e+3,    1, 1e-3, 1e-6],
      Frequency(1, FrequencyUnit.megahertz): [1e+6, 1e+3,    1, 1e-3],
      Frequency(1, FrequencyUnit.gigahertz): [1e+9, 1e+6, 1e+3,    1],
    };

    test("should cover supported units", () {
      expect(FrequencyUnit.values.length, implementation.values.first.length);
      expect(FrequencyUnit.values.length, requirements.values.first.length);
    });

    implementation.forEach((actual, expected) {
      test("$actual should convert exactly", () {
        expect(actual.to(FrequencyUnit.hertz).value, expected[0]);
        expect(actual.to(FrequencyUnit.kilohertz).value, expected[1]);
        expect(actual.to(FrequencyUnit.megahertz).value, expected[2]);
        expect(actual.to(FrequencyUnit.gigahertz).value, expected[3]);
      });
    });

    requirements.forEach((actual, expected) {
      test("$actual should convert closely", () {
        expect(actual.to(FrequencyUnit.hertz).value, lessPreciseOrEquals(expected[0]));
        expect(actual.to(FrequencyUnit.kilohertz).value, lessPreciseOrEquals(expected[1]));
        expect(actual.to(FrequencyUnit.megahertz).value, lessPreciseOrEquals(expected[2]));
        expect(actual.to(FrequencyUnit.gigahertz).value, lessPreciseOrEquals(expected[3]));
      });
    });

    test("should use standard symbols", () {
      expect(Frequency(1, FrequencyUnit.hertz).toString(), "1.0 Hz");
      expect(Frequency(1, FrequencyUnit.kilohertz).toString(), "1.0 kHz");
      expect(Frequency(1, FrequencyUnit.megahertz).toString(), "1.0 MHz");
      expect(Frequency(1, FrequencyUnit.gigahertz).toString(), "1.0 GHz");
    });
  });
}
