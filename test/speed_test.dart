import 'package:flutter_test/flutter_test.dart';

import 'package:units/speed.dart';
import 'package:units/speed_unit.dart';

import 'src/less_precise_or_equals.dart';

void main() {
  group("should convert correctly", () {
    Map<Speed, List<double>> implementation = {
      /*                                              mph          ft/s                 m/s     km/h            kn */
      Speed(1, SpeedUnit.milePerHour):      [           1, 1.4666666667,            0.44704, 1.60934, 0.8689762419],
      Speed(1, SpeedUnit.footPerSecond):    [0.6818181818,            1,             0.3048, 1.09728, 0.5924838013],
      Speed(1, SpeedUnit.meterPerSecond):   [2.2369362921,      3.28084,                  1,     3.6, 1.9438444924],
      Speed(1, SpeedUnit.kilometerPerHour): [0.6213711922, 0.9113444153, 0.2777777777777778,       1, 0.5399568035],
      Speed(1, SpeedUnit.knot):             [     1.15078, 1.6878098571,       0.5144444444,   1.852,            1],
    };

    Map<Speed, List<double>> requirements = {
      /*                                              mph          ft/s                 m/s     km/h            kn */
      Speed(1, SpeedUnit.milePerHour):      [           1,      1.46667,            0.44704, 1.60934,     0.868976],
      Speed(1, SpeedUnit.footPerSecond):    [    0.681818,            1,             0.3048, 1.09728,     0.592484],
      Speed(1, SpeedUnit.meterPerSecond):   [     2.23694,      3.28084,                  1,     3.6,      1.94384],
      Speed(1, SpeedUnit.kilometerPerHour): [    0.621372,     0.911344,           0.277778,       1,     0.539957],
      Speed(1, SpeedUnit.knot):             [     1.15078,      1.68781,           0.514445,   1.852,            1],
    };

    test("should cover supported units", () {
      expect(SpeedUnit.values.length, implementation.values.first.length);
      expect(SpeedUnit.values.length, requirements.values.first.length);
    });

    implementation.forEach((actual, expected) {
      test("$actual should convert exactly", () {
        expect(actual.to(SpeedUnit.milePerHour).value, expected[0]);
        expect(actual.to(SpeedUnit.footPerSecond).value, expected[1]);
        expect(actual.to(SpeedUnit.meterPerSecond).value, expected[2]);
        expect(actual.to(SpeedUnit.kilometerPerHour).value, expected[3]);
        expect(actual.to(SpeedUnit.knot).value, expected[4]);
      });
    });

    requirements.forEach((actual, expected) {
      test("$actual should convert closely", () {
        expect(actual.to(SpeedUnit.milePerHour).value, lessPreciseOrEquals(expected[0]));
        expect(actual.to(SpeedUnit.footPerSecond).value, lessPreciseOrEquals(expected[1]));
        expect(actual.to(SpeedUnit.meterPerSecond).value, lessPreciseOrEquals(expected[2]));
        expect(actual.to(SpeedUnit.kilometerPerHour).value, lessPreciseOrEquals(expected[3]));
        expect(actual.to(SpeedUnit.knot).value, lessPreciseOrEquals(expected[4]));
      });
    });

    test("should use standard symbols", () {
      expect(Speed(1, SpeedUnit.milePerHour).toString(), "1.0 mph");
      expect(Speed(1, SpeedUnit.footPerSecond).toString(), "1.0 ft/s");
      expect(Speed(1, SpeedUnit.meterPerSecond).toString(), "1.0 m/s");
      expect(Speed(1, SpeedUnit.kilometerPerHour).toString(), "1.0 km/h");
      expect(Speed(1, SpeedUnit.knot).toString(), "1.0 kn");
    });
  });
}
