import 'package:flutter_test/flutter_test.dart';

import 'package:units/length.dart';
import 'package:units/length_units.dart';

void main() {
  group("length should converts correctly", () {
    Map<Length, List<double>> parameters = {
      Length(1, LengthUnit.foot): [1, 12, 0.3048, 0.00016457871141452112, 0.000189394, 0.3333333333333333],
    };

    parameters.forEach((actual, expected) {
      test("supported length units", () {
        expect(actual.to(LengthUnit.foot).value, moreOrLessEquals(expected[0]));
        expect(actual.to(LengthUnit.inch).value, moreOrLessEquals(expected[1]));
        expect(actual.to(LengthUnit.meter).value, moreOrLessEquals(expected[2]));
        expect(actual.to(LengthUnit.nauticalMile).value, moreOrLessEquals(expected[3]));
        expect(actual.to(LengthUnit.statueMile).value, moreOrLessEquals(expected[4]));
        expect(actual.to(LengthUnit.yard).value, moreOrLessEquals(expected[5]));
      });
    });
  });
}
