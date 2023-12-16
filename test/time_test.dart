import 'package:flutter_test/flutter_test.dart';

import 'package:unitates/time.dart';
import 'package:unitates/time_unit.dart';

import 'src/less_precise_or_equals.dart';

void main() {
  group("should convert correctly", () {
    Map<Time, List<double>> implementation = {
      /*                                    ns          μs         ms          s                    min                       h                       d                    week                   month                    year                  decade                century */
      Time(1, TimeUnit.nanosecond):  [       1,       1e-3,      1e-6,     1e-9, 1.6666666666666667e-11,  2.777777777777778e-13, 1.1574074074074074e-14, 1.6534391534391534e-15, 3.8051750380517503e-16,  3.170577045022194e-17,  3.170577045022194e-18, 3.170577045022194e-19],
      Time(1, TimeUnit.microsecond): [    1e+3,          1,      1e-3,     1e-6,  1.6666666666666667e-8, 2.7777777777777777e-10, 1.1574074074074074e-11, 1.6534391534391534e-12, 3.8051750380517506e-13,  3.170577045022194e-14,  3.170577045022194e-15, 3.170577045022194e-16],
      Time(1, TimeUnit.millisecond): [    1e+6,       1e+3,         1,     1e-3,  1.6666666666666667e-5,  2.7777777777777776e-7,  1.1574074074074074e-8,  1.6534391534391535e-9, 3.8051750380517503e-10,  3.170577045022194e-11, 3.1705770450221942e-12, 3.170577045022194e-13],
      Time(1, TimeUnit.second):      [    1e+9,       1e+6,      1e+3,        1,   0.016666666666666666,  0.0002777777777777778,  1.1574074074074073e-5,  1.6534391534391535e-6,  3.8051750380517503e-7,   3.170577045022194e-8,   3.170577045022194e-9, 3.170577045022194e-10],
      Time(1, TimeUnit.minute):      [   6e+10,       6e+7,      6e+4,       60,                      1,   0.016666666666666666,  0.0006944444444444445,    9.92063492063492e-5,  2.2831050228310503e-5,   1.902587519025875e-6,  1.9025875190258752e-7,  1.902587519025875e-8],
      Time(1, TimeUnit.hour):        [ 3.6e+12,     3.6e+9,    3.6e+6,     3600,                     60,                      1,   0.041666666666666664,   0.005952380952380952,  0.0013698630136986301, 0.00011415525114155251,  1.1415525114155251e-5, 1.1415525114155251e-6],
      Time(1, TimeUnit.day):         [8.64e+13,   8.64e+10,   8.64e+7,    86400,                   1440,                     24,                      1,    0.14285714285714285,    0.03287671232873109,  0.0027397260273972603,   0.000273972602739726, 2.7397260273972603e-5],
      Time(1, TimeUnit.week):        [6.048e+14, 6.048e+11,  6.048e+8,   604800,                  10080,                    168,                      7,                      1,     0.2301369863033875,   0.019178029649233836,  0.0019178066428986497, 0.0001917808114092706],
      Time(1, TimeUnit.month):       [2.628e+15, 2.628e+12,  2.628e+9, 2.628e+6,                  43800,                    730,          30.4166666667,           4.3452380952,                      1,    0.08333333333333333,   0.008333333333333333, 0.0008333333333333334],
      Time(1, TimeUnit.year):        [3.154e+16, 3.154e+13, 3.154e+10, 3.154e+7,                 525600,                   8760,                    365,                52.1429,                     12,                      1,                    0.1,                  0.01],
      Time(1, TimeUnit.decade):      [3.154e+17, 3.154e+14, 3.154e+11, 3.154e+8,               5.256e+6,                  87600,                   3650,                521.429,                    120,                     10,                      1,                   0.1],
      Time(1, TimeUnit.century):     [3.154e+18, 3.154e+15, 3.154e+12, 3.154e+9,               5.256e+7,                 876000,                  36500,               5214.286,                   1200,                    100,                     10,                     1],
    };

    Map<Time, List<double>> requirements = {
      /*                                    ns          μs         ms          s                    min                       h                       d                    week                   month                    year                  decade                century */
      Time(1, TimeUnit.nanosecond):  [       1,       1e-3,      1e-6,     1e-9,              1.6667e-11,            2.7778e-13,             1.1574e-14,             1.6534e-15,             3.8052e-16,              3.171e-17,             3.171e-18,              3.171e-19],
      Time(1, TimeUnit.microsecond): [    1e+3,          1,      1e-3,     1e-6,               1.6667e-8,            2.7778e-10,             1.1574e-11,             1.6534e-12,             3.8052e-13,              3.171e-14,             3.171e-15,              3.171e-16],
      Time(1, TimeUnit.millisecond): [    1e+6,       1e+3,         1,     1e-3,               1.6667e-5,             2.7778e-7,              1.1574e-8,              1.6534e-9,             3.8052e-10,              3.171e-11,             3.171e-12,              3.171e-13],
      Time(1, TimeUnit.second):      [    1e+9,       1e+6,      1e+3,        1,               0.0166667,           0.000277778,              1.1574e-5,              1.6534e-6,              3.8052e-7,               3.171e-8,              3.171e-9,              3.171e-10],
      Time(1, TimeUnit.minute):      [    6e+10,      6e+7,      6e+4,       60,                       1,             0.0166667,            0.000694444,              9.9206e-5,              2.2831e-5,              1.9026e-6,             1.9026e-7,              1.9026e-8],
      Time(1, TimeUnit.hour):        [  3.6e+12,    3.6e+9,    3.6e+6,     3600,                      60,                     1,              0.0416667,             0.00595238,             0.00136986,            0.000114155,             1.1416e-5,              1.1416e-6],
      Time(1, TimeUnit.day):         [ 8.64e+13,  8.64e+10,   8.64e+7,    86400,                    1440,                    24,                      1,               0.142857,              0.0328767,             0.00273973,           0.000273973,              2.7397e-5],
      Time(1, TimeUnit.week):        [6.048e+14, 6.048e+11,  6.048e+8,   604800,                   10080,                   168,                      7,                      1,               0.230137,              0.0191781,            0.00191781,            0.000191781],
      Time(1, TimeUnit.month):       [2.628e+15, 2.628e+12,  2.628e+9, 2.628e+6,                   43800,               730.001,                30.4167,                4.34524,                      1,              0.0833334,            0.00833334,            0.000833334],
      Time(1, TimeUnit.year):        [3.154e+16, 3.154e+13, 3.154e+10, 3.154e+7,                  525600,                  8760,                    365,                52.1429,                     12,                      1,                   0.1,                   0.01],
      Time(1, TimeUnit.decade):      [3.154e+17, 3.154e+14, 3.154e+11, 3.154e+8,                5.256e+6,                 87600,                   3650,                521.429,                    120,                     10,                     1,                    0.1],
      Time(1, TimeUnit.century):     [3.154e+18, 3.154e+15, 3.154e+12, 3.154e+9,                5.256e+7,                876000,                  36500,                5214.29,                   1200,                    100,                    10,                      1],
    };

    test("should cover supported units", () {
      expect(TimeUnit.values.length, implementation.values.first.length);
      expect(TimeUnit.values.length, requirements.values.first.length);
    });

    implementation.forEach((actual, expected) {
      test("$actual should convert exactly", () {
        expect(actual.to(TimeUnit.nanosecond).value, expected[0]);
        expect(actual.to(TimeUnit.microsecond).value, expected[1]);
        expect(actual.to(TimeUnit.millisecond).value, expected[2]);
        expect(actual.to(TimeUnit.second).value, expected[3]);
        expect(actual.to(TimeUnit.minute).value, expected[4]);
        expect(actual.to(TimeUnit.hour).value, expected[5]);
        expect(actual.to(TimeUnit.day).value, expected[6]);
        expect(actual.to(TimeUnit.week).value, expected[7]);
        expect(actual.to(TimeUnit.month).value, expected[8]);
        expect(actual.to(TimeUnit.year).value, expected[9]);
        expect(actual.to(TimeUnit.decade).value, expected[10]);
        expect(actual.to(TimeUnit.century).value, expected[11]);
      });
    });

    requirements.forEach((actual, expected) {
      test("$actual should convert closely", () {
        expect(actual.to(TimeUnit.nanosecond).value, lessPreciseOrEquals(expected[0]));
        expect(actual.to(TimeUnit.microsecond).value, lessPreciseOrEquals(expected[1]));
        expect(actual.to(TimeUnit.millisecond).value, lessPreciseOrEquals(expected[2]));
        expect(actual.to(TimeUnit.second).value, lessPreciseOrEquals(expected[3]));
        expect(actual.to(TimeUnit.minute).value, lessPreciseOrEquals(expected[4]));
        expect(actual.to(TimeUnit.hour).value, lessPreciseOrEquals(expected[5]));
        expect(actual.to(TimeUnit.day).value, lessPreciseOrEquals(expected[6]));
        expect(actual.to(TimeUnit.week).value, lessPreciseOrEquals(expected[7]));
        expect(actual.to(TimeUnit.month).value, lessPreciseOrEquals(expected[8]));
        expect(actual.to(TimeUnit.year).value, lessPreciseOrEquals(expected[9]));
        expect(actual.to(TimeUnit.decade).value, lessPreciseOrEquals(expected[10]));
        expect(actual.to(TimeUnit.century).value, lessPreciseOrEquals(expected[11]));
      });
    });

    test("should use standard symbols", () {
      expect(Time(1, TimeUnit.nanosecond).toString(), "1.0 ns");
      expect(Time(1, TimeUnit.microsecond).toString(), "1.0 μs");
      expect(Time(1, TimeUnit.millisecond).toString(), "1.0 ms");
      expect(Time(1, TimeUnit.second).toString(), "1.0 s");
      expect(Time(1, TimeUnit.minute).toString(), "1.0 min");
      expect(Time(1, TimeUnit.hour).toString(), "1.0 h");
      expect(Time(1, TimeUnit.day).toString(), "1.0 d");
      expect(Time(1, TimeUnit.week).toString(), "1.0 week");
      expect(Time(1, TimeUnit.month).toString(), "1.0 month");
      expect(Time(1, TimeUnit.year).toString(), "1.0 year");
      expect(Time(1, TimeUnit.decade).toString(), "1.0 decade");
      expect(Time(1, TimeUnit.century).toString(), "1.0 century");
    });
  });
}
