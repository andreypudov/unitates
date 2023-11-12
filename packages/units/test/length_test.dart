import 'package:flutter_test/flutter_test.dart';

import 'package:units/length.dart';
import 'package:units/length_unit.dart';

import 'src/less_precise_or_equals.dart';

void main() {
  group("should convert correctly", () {
    Map<Length, List<double>> implementation = {
      /*                                                       km         m        cm        mm          µm             nm                       mi                     yd                        ft                   in                      nmi */
      Length(1, LengthUnit.kilometer):    [                     1,     1e+3,     1e+5,     1e+6,       1e+9,         1e+12,       0.621371192237334,    1093.6132983377079,                  3280.84,              39370.1,      0.5399568034557235],
      Length(1, LengthUnit.meter):        [                  1e-3,        1,     1e+2,     1e+3,       1e+6,          1e+9,             0.000621371,               1.09361,                  3.28084,              39.3701,             0.000539957],
      Length(1, LengthUnit.centimeter):   [                  1e-5,     1e-2,        1,     1e+1,       1e+4,          1e+7,  0.00000621371192237334,  0.010936132983377079,      0.03280839895013123,  0.39370078740157477, 0.000005399568034557236],
      Length(1, LengthUnit.millimeter):   [                  1e-6,     1e-3,     1e-1,        1,       1e+3,          1e+6,     6.21371192237334e-7, 0.0010936132983377078,    0.0032808398950131233,  0.03937007874015748,    5.399568034557235e-7],
      Length(1, LengthUnit.micrometer):   [                  1e-9,     1e-6,     1e-4,     1e-3,          1,          1e+3,    6.21371192237334e-10, 1.0936132983377078e-6, 0.0000032808398950131235, 3.937007874015748e-5,   5.399568034557236e-10],
      Length(1, LengthUnit.nanometer):    [                 1e-12,     1e-9,     1e-7,     1e-6,       1e-3,             1,   6.213711922373339e-13, 1.0936132983377077e-9,    3.2808398950131233e-9, 3.937007874015748e-8,   5.399568034557235e-13],
      Length(1, LengthUnit.statueMile):   [               1.60934, 1609.344, 160934.4,  1609344, 1609344000, 1609344000000,                       1,                  1760,                     5280,                63360,                0.868976],
      Length(1, LengthUnit.yard):         [             0.0009144,   0.9144,    91.44,    914.4,     914400,     914400000,   0.0005681818181818182,                     1,                        3,                   36,   0.0004937369468294682],
      Length(1, LengthUnit.foot):         [ 0.0003047999902464003,   0.3048,    30.48,    304.8,     304800,      3.048e+8,   0.0001893939393939394,    0.3333333333333333,                        1,                   12,  0.00016457871141452112],
      Length(1, LengthUnit.inch):         [0.00002539998628400741,   0.0254,     2.54,     25.4,      25400,      25400000, 0.000015782828282828283,  0.027777777777777776,      0.08333333333333333,                    1, 0.000013714900141812068],
      Length(1, LengthUnit.nauticalMile): [                 1.852,     1852,   185200,  1852000, 1852000000,     1.852e+12,                 1.15078,               2025.37,                  6076.12,              72913.4,                       1],
    };

    Map<Length, List<double>> requirements = {
      /*                                                       km         m        cm        mm          µm             nm                       mi                     yd                        ft                   in                      nmi */
      Length(1, LengthUnit.kilometer):    [                     1,     1e+3,     1e+5,     1e+6,       1e+9,         1e+12,               0.621371,                1093.61,                  3280.84,              39370.1,                0.539957],
      Length(1, LengthUnit.meter):        [                  1e-3,        1,     1e+2,     1e+3,       1e+6,          1e+9,             0.000621371,               1.09361,                  3.28084,              39.3701,             0.000539957],
      Length(1, LengthUnit.centimeter):   [                  1e-5,     1e-2,        1,     1e+1,       1e+4,          1e+7,               6.2137e-6,             0.0109361,                0.0328084,             0.393701,               5.3996e-6],
      Length(1, LengthUnit.millimeter):   [                  1e-6,     1e-3,     1e-1,        1,       1e+3,          1e+6,               6.2137e-7,            0.00109361,               0.00328084,            0.0393701,               5.3996e-7],
      Length(1, LengthUnit.micrometer):   [                  1e-9,     1e-6,     1e-4,     1e-3,          1,          1e+3,              6.2137e-10,             1.0936e-6,                3.2808e-6,             3.937e-5,              5.3996e-10],
      Length(1, LengthUnit.nanometer):    [                 1e-12,     1e-9,     1e-7,     1e-6,       1e-3,             1,              6.2137e-13,             1.0936e-9,                3.2808e-9,             3.937e-8,              5.3996e-13],
      Length(1, LengthUnit.statueMile):   [               1.60934,  1609.34,   160934,  1609344, 1609344000, 1609344000000,                       1,                  1760,                     5280,                63360,                0.868976],
      Length(1, LengthUnit.yard):         [             0.0009144,   0.9144,    91.44,    914.4,     914400,      9.144e+8,             0.000568182,                     1,                        3,                   36,             0.000493737],
      Length(1, LengthUnit.foot):         [             0.0003048,   0.3048,    30.48,    304.8,     304800,      3.048e+8,             0.000189394,              0.333333,                        1,                   12,             0.000164579],
      Length(1, LengthUnit.inch):         [               2.54e-5,   0.0254,     2.54,     25.4,      25400,       2.54e+7,               1.5783e-5,             0.0277778,                0.0833333,                    1,               1.3715e-5],
      Length(1, LengthUnit.nauticalMile): [                 1.852,     1852,   185200, 1.852e+6,   1.852e+9,     1.852e+12,                 1.15078,               2025.37,                  6076.12,              72913.4,                       1],
    };

    test("should cover supported units", () {
      expect(LengthUnit.values.length, implementation.values.first.length);
      expect(LengthUnit.values.length, requirements.values.first.length);
    });

    implementation.forEach((actual, expected) {
      test("$actual should convert exactly", () {
        expect(actual.to(LengthUnit.kilometer).value, expected[0]);
        expect(actual.to(LengthUnit.meter).value, expected[1]);
        expect(actual.to(LengthUnit.centimeter).value, expected[2]);
        expect(actual.to(LengthUnit.millimeter).value, expected[3]);
        expect(actual.to(LengthUnit.micrometer).value, expected[4]);
        expect(actual.to(LengthUnit.nanometer).value, expected[5]);
        expect(actual.to(LengthUnit.statueMile).value, expected[6]);
        expect(actual.to(LengthUnit.yard).value, expected[7]);
        expect(actual.to(LengthUnit.foot).value, expected[8]);
        expect(actual.to(LengthUnit.inch).value, expected[9]);
        expect(actual.to(LengthUnit.nauticalMile).value, expected[10]);
      });
    });

    requirements.forEach((actual, expected) {
      test("$actual should convert closely", () {
        expect(actual.to(LengthUnit.kilometer).value, lessPreciseOrEquals(expected[0]));
        expect(actual.to(LengthUnit.meter).value, lessPreciseOrEquals(expected[1]));
        expect(actual.to(LengthUnit.centimeter).value, lessPreciseOrEquals(expected[2]));
        expect(actual.to(LengthUnit.millimeter).value, lessPreciseOrEquals(expected[3]));
        expect(actual.to(LengthUnit.micrometer).value, lessPreciseOrEquals(expected[4]));
        expect(actual.to(LengthUnit.nanometer).value, lessPreciseOrEquals(expected[5]));
        expect(actual.to(LengthUnit.statueMile).value, lessPreciseOrEquals(expected[6]));
        expect(actual.to(LengthUnit.yard).value, lessPreciseOrEquals(expected[7]));
        expect(actual.to(LengthUnit.foot).value, lessPreciseOrEquals(expected[8]));
        expect(actual.to(LengthUnit.inch).value, lessPreciseOrEquals(expected[9]));
        expect(actual.to(LengthUnit.nauticalMile).value, lessPreciseOrEquals(expected[10]));
      });
    });

    test("should use standard symbols", () {
      expect(Length(1, LengthUnit.kilometer).toString(), "1.0 km");
      expect(Length(1, LengthUnit.meter).toString(), "1.0 m");
      expect(Length(1, LengthUnit.centimeter).toString(), "1.0 cm");
      expect(Length(1, LengthUnit.millimeter).toString(), "1.0 mm");
      expect(Length(1, LengthUnit.micrometer).toString(), "1.0 µm");
      expect(Length(1, LengthUnit.nanometer).toString(), "1.0 nm");
      expect(Length(1, LengthUnit.statueMile).toString(), "1.0 mi");
      expect(Length(1, LengthUnit.yard).toString(), "1.0 yd");
      expect(Length(1, LengthUnit.foot).toString(), "1.0 ft");
      expect(Length(1, LengthUnit.inch).toString(), "1.0 in");
      expect(Length(1, LengthUnit.nauticalMile).toString(), "1.0 nmi");
    });
  });
}
