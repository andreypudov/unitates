import 'package:flutter_test/flutter_test.dart';

import 'package:unitates/data_transfer_rate.dart';
import 'package:unitates/data_transfer_rate_unit.dart';

import 'src/less_precise_or_equals.dart';

void main() {
  group("should convert correctly", () {
    Map<DataTransferRate, List<double>> implementation = {
      /*                                                                      bps            kbps           KB/s       Kibit/s          Mbit/s           MB/s              Mibit/s          Gbit/s           GB/s                Gibit/s          Tbit/s              TB/s                Tibit/s */
      DataTransferRate(1, DataTransferRateUnit.bitPerSecond):      [            1,          0.001,      0.000125, 0.0009765625,           1e-6,       1.25e-7,  9.5367431640625e-7,           1e-9,      1.25e-10, 9.313225746154785e-10,          1e-12,         1.25e-13, 9.094947017729282e-13],
      DataTransferRate(1, DataTransferRateUnit.kilobitPerSecond):  [         1000,              1,         0.125,    0.9765625,          0.001,      0.000125, 0.00095367431640625,           1e-6,       1.25e-7,  9.313225746154785e-7,           1e-9,         1.25e-10, 9.094947017729282e-10],
      DataTransferRate(1, DataTransferRateUnit.kilobytePerSecond): [         8000,              8,             1,       7.8125,          0.008,         0.001,    0.00762939453125,           8e-6,          1e-6,  7.450580596923828e-6,           8e-9,             1e-9,  7.275957614183426e-9],
      DataTransferRate(1, DataTransferRateUnit.kibibitPerSecond):  [         1024,          1.024,         0.128,            1,       0.001024,      0.000128,        0.0009765625,       1.024e-6,       1.28e-7,    9.5367431640625e-7,       1.024e-9,         1.28e-10, 9.313225746154785e-10],
      DataTransferRate(1, DataTransferRateUnit.megabitPerSecond):  [         1e+6,           1000,           125,     976.5625,              1,         0.125,    0.95367431640625,          0.001,      0.000125, 0.0009313225746154785,           1e-6,          1.25e-7,  9.094947017729282e-7],
      DataTransferRate(1, DataTransferRateUnit.megabytePerSecond): [         8e+6,           8000,          1000,       7812.5,              8,             1,       7.62939453125,          0.008,         0.001,  0.007450580596923828,           8e-6,             1e-6,  7.275957614183426e-6],
      DataTransferRate(1, DataTransferRateUnit.mebibitPerSecond):  [      1048576,       1048.576,       131.072,         1024,       1.048576,      0.131072,                   1,    0.001048576,   0.000131072,          0.0009765625,    1.048576e-6,       1.31072e-7,    9.5367431640625e-7],
      DataTransferRate(1, DataTransferRateUnit.gigabitPerSecond):  [         1e+9,           1e+6,        125000,     976562.5,           1000,           125,     953.67431640625,              1,         0.125,    0.9313225746154785,          0.001,         0.000125, 0.0009094947017729282],
      DataTransferRate(1, DataTransferRateUnit.gigabytePerSecond): [         8e+9,           8e+6,          1e+6,      7812500,           8000,          1000,       7629.39453125,              8,             1,     7.450580596923828,          0.008,            0.001,  0.007275957614183426],
      DataTransferRate(1, DataTransferRateUnit.gibibitPerSecond):  [   1073741824,    1073741.824,    134217.728,      1048576,    1073.741824,    134.217728,                1024,    1.073741824,   0.134217728,                     1, 0.001073741824,   0.000134217728,          0.0009765625],
      DataTransferRate(1, DataTransferRateUnit.terabitPerSecond):  [        1e+12,           1e+9,       1.25e+8,    976562500,           1e+6,        125000,     953674.31640625,           1000,           125,     931.3225746154785,              1,            0.125,    0.9094947017729282],
      DataTransferRate(1, DataTransferRateUnit.terabytePerSecond): [        8e+12,           8e+9,          1e+9,    7.8125e+9,           8e+6,          1e+6,       7629394.53125,           8000,          1000,     7450.580596923828,              8,                1,     7.275957614183426],
      DataTransferRate(1, DataTransferRateUnit.tebibitPerSecond):  [1099511627776, 1099511627.776, 137438953.472,   1073741824, 1099511.627776, 137438.953472,             1048576, 1099.511627776, 137.438953472,                  1024, 1.099511627776,   0.137438953472,                     1],
    };

    Map<DataTransferRate, List<double>> requirements = {
      /*                                                                      bps            kbps           KB/s       Kibit/s          Mbit/s           MB/s              Mibit/s          Gbit/s           GB/s                Gibit/s          Tbit/s              TB/s                Tibit/s */
      DataTransferRate(1, DataTransferRateUnit.bitPerSecond):      [            1,          0.001,      0.000125,  0.000976563,           1e-6,       1.25e-7,           9.5367e-7,           1e-9,      1.25e-10,            9.3132e-10,          1e-12,         1.25e-13,            9.0949e-13],
      DataTransferRate(1, DataTransferRateUnit.kilobitPerSecond):  [         1000,              1,         0.125,     0.976563,          0.001,      0.000125,         0.000953674,           1e-6,       1.25e-7,             9.3132e-7,           1e-9,         1.25e-10,            9.0949e-10],
      DataTransferRate(1, DataTransferRateUnit.kilobytePerSecond): [         8000,              8,             1,       7.8125,          0.008,         0.001,          0.00762939,           8e-6,          1e-6,             7.4506e-6,           8e-9,             1e-9,              7.276e-9],
      DataTransferRate(1, DataTransferRateUnit.kibibitPerSecond):  [         1024,          1.024,         0.128,            1,       0.001024,      0.000128,         0.000976563,       1.024e-6,       1.28e-7,             9.5367e-7,       1.024e-9,         1.28e-10,            9.3132e-10],
      DataTransferRate(1, DataTransferRateUnit.megabitPerSecond):  [         1e+6,           1000,           125,      976.563,              1,         0.125,            0.953674,          0.001,      0.000125,           0.000931323,           1e-6,          1.25e-7,             9.0949e-7],
      DataTransferRate(1, DataTransferRateUnit.megabytePerSecond): [         8e+6,           8000,          1000,       7812.5,              8,             1,             7.62939,          0.008,         0.001,            0.00745058,           8e-6,             1e-6,              7.276e-6],
      DataTransferRate(1, DataTransferRateUnit.mebibitPerSecond):  [     1.049e+6,        1048.58,       131.072,         1024,        1.04858,      0.131072,                   1,     0.00104858,   0.000131072,           0.000976563,      1.0486e-6,        1.3107e-7,             9.5367e-7],
      DataTransferRate(1, DataTransferRateUnit.gigabitPerSecond):  [         1e+9,           1e+6,        125000,       976563,           1000,           125,             953.674,              1,         0.125,              0.931323,          0.001,         0.000125,           0.000909495],
      DataTransferRate(1, DataTransferRateUnit.gigabytePerSecond): [         8e+9,           8e+6,          1e+6,     7.813e+6,           8000,          1000,             7629.39,              8,             1,               7.45058,          0.008,            0.001,            0.00727596],
      DataTransferRate(1, DataTransferRateUnit.gibibitPerSecond):  [     1.074e+9,       1.074e+6,        134218,     1.049e+6,        1073.74,       134.218,                1024,        1.07374,      0.134218,                     1,     0.00107374,      0.000134218,           0.000976563],
      DataTransferRate(1, DataTransferRateUnit.terabitPerSecond):  [        1e+12,           1e+9,       1.25e+8,     9.766e+8,           1e+6,        125000,              953674,           1000,           125,               931.323,              1,            0.125,              0.909495],
      DataTransferRate(1, DataTransferRateUnit.terabytePerSecond): [        8e+12,           8e+9,          1e+9,     7.813e+9,           8e+6,          1e+6,            7.629e+6,           8000,          1000,               7450.58,              8,                1,               7.27596],
      DataTransferRate(1, DataTransferRateUnit.tebibitPerSecond):  [      1.1e+12,         1.1e+9,      1.374e+8,     1.074e+9,         1.1e+6,        137439,            1.049e+6,        1099.51,       137.439,                  1024,        1.09951,         0.137439,                     1],
    };

    test("should cover supported units", () {
      expect(DataTransferRateUnit.values.length, implementation.values.first.length);
      expect(DataTransferRateUnit.values.length, requirements.values.first.length);
    });

    implementation.forEach((actual, expected) {
      test("$actual should convert exactly", () {
        expect(actual.to(DataTransferRateUnit.bitPerSecond).value, expected[0]);
        expect(actual.to(DataTransferRateUnit.kilobitPerSecond).value, expected[1]);
        expect(actual.to(DataTransferRateUnit.kilobytePerSecond).value, expected[2]);
        expect(actual.to(DataTransferRateUnit.kibibitPerSecond).value, expected[3]);
        expect(actual.to(DataTransferRateUnit.megabitPerSecond).value, expected[4]);
        expect(actual.to(DataTransferRateUnit.megabytePerSecond).value, expected[5]);
        expect(actual.to(DataTransferRateUnit.mebibitPerSecond).value, expected[6]);
        expect(actual.to(DataTransferRateUnit.gigabitPerSecond).value, expected[7]);
        expect(actual.to(DataTransferRateUnit.gigabytePerSecond).value, expected[8]);
        expect(actual.to(DataTransferRateUnit.gibibitPerSecond).value, expected[9]);
        expect(actual.to(DataTransferRateUnit.terabitPerSecond).value, expected[10]);
        expect(actual.to(DataTransferRateUnit.terabytePerSecond).value, expected[11]);
        expect(actual.to(DataTransferRateUnit.tebibitPerSecond).value, expected[12]);
      });
    });

    requirements.forEach((actual, expected) {
      test("$actual should convert closely", () {
        expect(actual.to(DataTransferRateUnit.bitPerSecond).value, lessPreciseOrEquals(expected[0]));
        expect(actual.to(DataTransferRateUnit.kilobitPerSecond).value, lessPreciseOrEquals(expected[1]));
        expect(actual.to(DataTransferRateUnit.kilobytePerSecond).value, lessPreciseOrEquals(expected[2]));
        expect(actual.to(DataTransferRateUnit.kibibitPerSecond).value, lessPreciseOrEquals(expected[3]));
        expect(actual.to(DataTransferRateUnit.megabitPerSecond).value, lessPreciseOrEquals(expected[4]));
        expect(actual.to(DataTransferRateUnit.megabytePerSecond).value, lessPreciseOrEquals(expected[5]));
        expect(actual.to(DataTransferRateUnit.mebibitPerSecond).value, lessPreciseOrEquals(expected[6]));
        expect(actual.to(DataTransferRateUnit.gigabitPerSecond).value, lessPreciseOrEquals(expected[7]));
        expect(actual.to(DataTransferRateUnit.gigabytePerSecond).value, lessPreciseOrEquals(expected[8]));
        expect(actual.to(DataTransferRateUnit.gibibitPerSecond).value, lessPreciseOrEquals(expected[9]));
        expect(actual.to(DataTransferRateUnit.terabitPerSecond).value, lessPreciseOrEquals(expected[10]));
        expect(actual.to(DataTransferRateUnit.terabytePerSecond).value, lessPreciseOrEquals(expected[11]));
        expect(actual.to(DataTransferRateUnit.tebibitPerSecond).value, lessPreciseOrEquals(expected[12]));
      });
    });

    test("should use standard symbols", () {
      expect(DataTransferRate(1, DataTransferRateUnit.bitPerSecond).toString(), "1.0 bps");
      expect(DataTransferRate(1, DataTransferRateUnit.kilobitPerSecond).toString(), "1.0 kbps");
      expect(DataTransferRate(1, DataTransferRateUnit.kilobytePerSecond).toString(), "1.0 KB/s");
      expect(DataTransferRate(1, DataTransferRateUnit.kibibitPerSecond).toString(), "1.0 Kibit/s");
      expect(DataTransferRate(1, DataTransferRateUnit.megabitPerSecond).toString(), "1.0 Mbit/s");
      expect(DataTransferRate(1, DataTransferRateUnit.megabytePerSecond).toString(), "1.0 MB/s");
      expect(DataTransferRate(1, DataTransferRateUnit.mebibitPerSecond).toString(), "1.0 Mibit/s");
      expect(DataTransferRate(1, DataTransferRateUnit.gigabitPerSecond).toString(), "1.0 Gbit/s");
      expect(DataTransferRate(1, DataTransferRateUnit.gigabytePerSecond).toString(), "1.0 GB/s");
      expect(DataTransferRate(1, DataTransferRateUnit.gibibitPerSecond).toString(), "1.0 Gibit/s");
      expect(DataTransferRate(1, DataTransferRateUnit.terabitPerSecond).toString(), "1.0 Tbit/s");
      expect(DataTransferRate(1, DataTransferRateUnit.terabytePerSecond).toString(), "1.0 TB/s");
      expect(DataTransferRate(1, DataTransferRateUnit.tebibitPerSecond).toString(), "1.0 Tibit/s");
    });
  });
}
