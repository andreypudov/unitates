import 'package:flutter_test/flutter_test.dart';

import 'package:units/volume.dart';
import 'package:units/volume_unit.dart';

import 'src/less_precise_or_equals.dart';

void main() {
  group("should convert correctly", () {
    Map<Volume, List<double>> implementation = {
      /*                                                     us cup               us gal               us qt               us pt        us legal cup            us fl oz             us tbsp            us tsp                   m³                 L               mL         imperial gal          imperial qt         imperial pt        imperial cup     imperial fl oz      imperial tbsp      imperial tsp                    ft³                in³ */
      Volume(1, VolumeUnit.usCup):              [                 1,              0.0625,               0.25,                0.5,      0.98578431875,                  8,                 16,               48, 0.00023658823648491, 0.23658823648491, 236.58823648491,   0.052042136759281,    0.20816854703712,   0.41633709231449,   0.83267418462899,   8.3267418462899,   13.322786954064,  39.968360862214,    0.0083550347222222,   14.437499999079],
      Volume(1, VolumeUnit.usLiquidGallon):     [                16,                   1,                  4,                  8,         15.7725491,                128,                256,              768,      0.003785411784,      3.785411784,     3785.411784,    0.83267418462899,      3.330696738516,    6.6613934770319,    13.322786954064,   133.22786954064,   213.16459126502,  639.49377379542,      0.13368055555556,               231],
      Volume(1, VolumeUnit.usLiquidQuart):      [                 4,                0.25,                  1,                  2,                  4,                 32,                 64,              192,      0.000946352946, 0.94635294599999, 946.35294599999,    0.20816855803559,    0.83267423214235,    1.6653484642847,    3.3306969285694,   33.306969285694,    53.29115085711,  159.87345257142,     0.033420140795881,   57.750003295282],
      Volume(1, VolumeUnit.usLiquidPint):       [                 2,               0.125,                0.5,                  1,       1.9715686375,                 16,                 32,               96,      0.000473176473,      0.473176473,      473.176473,    0.10408427307862,    0.41633709231449,   0.83267418462899,     1.665348369258,    16.65348369258,   26.645573908128,  79.936721724428,     0.016710069444444,            28.875],
      Volume(1, VolumeUnit.usLegalCup):         [   1.0144206810553,   0.063401292565956,       0.2536051558,       0.5072103116,                  1,    8.1153654484423,    16.230730896885,  48.692192690654, 0.00023658823648491, 0.23658823648491,             240,   0.052792619591781,    0.21117047836712,   0.42234095673425,    0.8446819134685,    8.446819134685,   13.514910615496,  40.544731846511,    0.0084755200131573,   14.645698582736],
      Volume(1, VolumeUnit.usFluidOunce):       [             0.125,  0.0078125000082554,  0.031249998216839,             0.0625,   0.12322303984375,                  1,                  2,                6,    2.95735295625e-5,  0.0295735295625,   29.5735295625,   0.006505267067414,   0.026021068269656,  0.052042136539312,   0.10408427307862,   1.0408427307862,    1.665348369258,  4.9960451077767,    0.0010443793402778,         1.8046875],
      Volume(1, VolumeUnit.usTablespoon):       [            0.0625,          0.00390625,  0.015624999108419,            0.03125,  0.061611519921875,                0.5,                  1,                3,   1.478676478125e-5, 0.01478676478125,  14.78676478125,   0.003252633533707,   0.013010534134828,  0.026021068269656,  0.052042136539312,  0.52042136539312,  0.83267418462899,  2.4980225538884,   0.00052218967013889,        0.90234375],
      Volume(1, VolumeUnit.usTeaspoon):         [ 0.020833333333333,  0.0013020833333333, 0.0052083330361398,  0.010416666666667,  0.020537173307292,   0.16666666666667,   0.33333333333333,                1,    4.92892159375e-6, 0.00492892159375,   4.92892159375,  0.0010842111779023,  0.0043368447116093, 0.0086736894232186,  0.017347378846437,  0.17347378846437,    0.277558061543, 0.83267418462946,   0.00017406322337963,        0.30078125],
      Volume(1, VolumeUnit.cubicMeter):         [   4226.7528377304,     264.17205235815,    1056.6881491367,    2113.3764188652,    4166.6666666667,    33814.022701843,    67628.045403686,  202884.13621106,                   1,             1000,            1e+6,     219.96924829909,     879.87699319635,    1759.7539863927,    3519.5079727854,   35195.079727854,   56312.127564566,  168936.38269379,       35.314666721489,   61023.744094732],
      Volume(1, VolumeUnit.liter):              [   4.2267528377304,    0.26417205235815,    1.0566881491367,    2.1133764188652,    4.1666666666667,    33.814022701843,    67.628045403686,  202.88413621106,               0.001,                1,            1000,    0.21996924829909,    0.87987699319635,    1.7597539863927,    3.5195079727854,   35.195079727854,   56.312127564566,  168.93638269379,     0.035314666721489,   61.023744094732],
      Volume(1, VolumeUnit.milliliter):         [0.0042267528377304, 0.00026417205235815, 0.0010566881491367, 0.0021133764188652, 0.0041666666666667,  0.033814022701843,  0.067628045403686, 0.20288413621106,                1e-6,            0.001,               1, 0.00021996924829909, 0.00087987699319635, 0.0017597539863927, 0.0035195079727854, 0.035195079727854, 0.056312127564566, 0.16893638269379,    3.5314666721489e-5, 0.061023744094732],
      Volume(1, VolumeUnit.imperialGallon):     [   19.215198808078,     1.2009499255049,     4.803799427909,    9.6075994040388,    18.942041666667,    153.72159046462,    307.44318092924,  922.32954278773,          0.00454609,          4.54609,         4546.09,                   1,                   4,                  8,                 16,               160,               256,              768,      0.16054365323589,   277.41943279162],
      Volume(1, VolumeUnit.imperialQuart):      [   4.8037997020194,    0.30023748137621,    1.2009498569773,    2.4018998510097,    4.7355104166667,    38.430397616155,    76.860795232311,  230.58238569693,        0.0011365225,        1.1365225,       1136.5225,                0.25,                   1,                  2,                  4,                40,                64,              192,     0.040135913308973,   69.354858197905],
      Volume(1, VolumeUnit.imperialPint):       [   2.4018998510097,    0.15011874068811,   0.60047492848863,    1.2009499255049,    2.3677552083333,    19.215198808078,    38.430397616155,  115.29119284847,       0.00056826125,       0.56826125,       568.26125,               0.125,                 0.5,                  1,                  2,                20,                32,               96,     0.020067956654487,   34.677429098953],
      Volume(1, VolumeUnit.imperialCup):        [   1.2009499255049,   0.075059370344053,   0.30023746424431,   0.60047496275243,    1.1838776041667,    9.6075994040388,    19.215198808078,  57.645596424233,      0.000284130625,      0.284130625,      284.130625,              0.0625,                0.25,                0.5,                  1,                10,                16,               48,     0.010033978327243,   17.338714549476],
      Volume(1, VolumeUnit.imperialFluidOunce): [  0.12009499255049,  0.0075059370344053,  0.030023746424431,  0.060047496275243,   0.11838776041667,   0.96075994040388,    1.9215198808078,  5.7645596424233,       2.84130625e-5,     0.0284130625,      28.4130625,             0.00625,               0.025,               0.05,                0.1,                 1,               1.6,              4.8,    0.0010033978327243,   1.7338714549476],
      Volume(1, VolumeUnit.imperialTablespoon): [ 0.075059370344053,  0.0046912106465033,   0.01876484151527,  0.037529685172027,  0.073992350260417,   0.60047496275243,    1.2009499255049,  3.6028497765146,    1.77581640625e-5,  0.0177581640625,   17.7581640625,          0.00390625,            0.015625,            0.03125,             0.0625,             0.625,                 1,                3,    0.0006271236454527,   1.0836696593423],
      Volume(1, VolumeUnit.imperialTeaspoon):   [  0.02501979011467,  0.0015637368821669,  0.006254947171753,  0.012509895057335,  0.024664116753458,   0.20015832091736,   0.40031664183473,  1.2009499255042,    5.91938802083e-6, 0.00591938802083,   5.91938802083,          0.00130208,          0.00520833,         0.01041667,         0.02083333,        0.20833333,        0.33333333,                1,   0.00020904121515078,  0.36122321978055],
      Volume(1, VolumeUnit.cubicFoot):          [   119.68831168831,     7.4805194805195,    29.922076214689,    59.844155844156,        117.9868608,    957.50649350649,     1915.012987013,   5745.038961039,      0.028316846592,     28.316846592,    28316.846592,     6.2288354590428,     24.915341836171,    49.830683672343,    99.661367344685,   996.61367344685,    1594.581877515,  4783.7456325476,                     1,              1728],
      Volume(1, VolumeUnit.cubicInch):          [ 0.069264069264069,  0.0043290043290043,  0.017316016327945,  0.034632034632035,  0.068279433333333,   0.55411255411255,    1.1082251082251,  3.3246753246753,        1.6387064e-5,      0.016387064,       16.387064,   0.003604650149909,   0.014418600599636,  0.028837201199272,  0.057674402398545,  0.57674402398545,  0.92279043837671,  2.7683713151317, 0.0005787037037037037,                 1],
    };

    Map<Volume, List<double>> requirements = {
      /*                                                     us cup               us gal               us qt               us pt        us legal cup            us fl oz             us tbsp            us tsp                   m³                 L               mL         imperial gal          imperial qt         imperial pt        imperial cup     imperial fl oz      imperial tbsp      imperial tsp                    ft³                in³ */
      Volume(1, VolumeUnit.usCup):              [                 1,              0.0625,               0.25,                0.5,           0.985784,                  8,                 16,               48,         0.000236588,         0.236588,         236.588,           0.0520421,            0.208169,           0.416337,           0.832674,           8.32674,           13.3228,          39.9683,            0.00835503,           14.4375],
      Volume(1, VolumeUnit.usLiquidGallon):     [                16,                   1,                  4,                  8,                 16,                128,                256,              768,          0.00378541,          3.78541,         3785.41,            0.832674,              3.3307,            6.66139,            13.3228,           133.228,           213.165,          639.494,              0.133681,               231],
      Volume(1, VolumeUnit.usLiquidQuart):      [                 4,                0.25,                  1,                  2,                  4,                 32,                 64,              192,         0.000946353,         0.946353,         946.353,            0.208169,            0.832674,            1.66535,             3.3307,            33.307,           53.2911,          159.873,             0.0334201,             57.75],
      Volume(1, VolumeUnit.usLiquidPint):       [                 2,               0.125,                0.5,                  1,            1.97157,                 16,                 32,               96,         0.000473176,         0.473176,         473.176,            0.104084,            0.416337,           0.832674,            1.66535,           16.6535,           26.6456,          79.9367,             0.0167101,            28.875],
      Volume(1, VolumeUnit.usLegalCup):         [           1.01442,           0.0634013,           0.253605,            0.50721,                  1,            8.11537,            16.2307,          48.6922,             0.00024,             0.24,             240,           0.0527926,             0.21117,           0.422341,           0.844682,           8.44682,           13.5149,          40.5447,            0.00847552,           14.6457],
      Volume(1, VolumeUnit.usFluidOunce):       [             0.125,           0.0078125,            0.03125,             0.0625,           0.123223,                  1,                  2,                6,           2.9574e-5,        0.0295735,         29.5735,          0.00650527,           0.0260211,          0.0520421,           0.104084,           1.04084,           1.66535,          4.99604,            0.00104438,           1.80469],
      Volume(1, VolumeUnit.usTablespoon):       [            0.0625,          0.00390625,           0.015625,            0.03125,          0.0616115,                0.5,                  1,                3,           1.4787e-5,        0.0147868,         14.7868,          0.00325263,           0.0130105,          0.0260211,          0.0520421,          0.520421,          0.832674,          2.49802,            0.00052219,          0.902344],
      Volume(1, VolumeUnit.usTeaspoon):         [         0.0208333,          0.00130208,         0.00520833,          0.0104167,          0.0205372,           0.166667,           0.333333,                1,           4.9289e-6,       0.00492892,         4.92892,          0.00108421,          0.00433684,         0.00867369,          0.0173474,          0.173474,          0.277558,         0.832674,           0.000174063,          0.300781],
      Volume(1, VolumeUnit.cubicMeter):         [           4226.75,             264.172,            1056.69,            2113.38,            4166.67,              33814,              67628,           202884,                   1,             1000,            1e+6,             219.969,             879.877,            1759.75,            3519.51,           35195.1,           56312.1,           168936,               35.3147,           61023.7],
      Volume(1, VolumeUnit.liter):              [           4.22675,            0.264172,            1.05669,            2.11338,            4.16667,             33.814,             67.628,          202.884,               0.001,                1,            1000,            0.219969,            0.879877,            1.75975,            3.51951,           35.1951,           56.3121,          168.936,             0.0353147,           61.0237],
      Volume(1, VolumeUnit.milliliter):         [        0.00422675,         0.000264172,         0.00105669,         0.00211338,         0.00416667,           0.033814,           0.067628,         0.202884,                1e-6,            0.001,               1,         0.000219969,         0.000879877,         0.00175975,         0.00351951,         0.0351951,         0.0563121,         0.168936,             3.5315e-5,         0.0610237],
      Volume(1, VolumeUnit.imperialGallon):     [           19.2152,             1.20095,             4.8038,             9.6076,             18.942,            153.722,            307.443,           922.33,          0.00454609,          4.54609,         4546.09,                   1,                   4,                  8,                 16,               160,               256,              768,              0.160544,           277.419],
      Volume(1, VolumeUnit.imperialQuart):      [            4.8038,            0.300237,            1.20095,             2.4019,            4.73551,            38.4304,            76.8608,          230.582,          0.00113652,          1.13652,         1136.52,                0.25,                   1,                  2,                  4,                40,                64,              192,             0.0401359,           69.3549],
      Volume(1, VolumeUnit.imperialPint):       [            2.4019,            0.150119,           0.600475,            1.20095,            2.36776,            19.2152,            38.4304,          115.291,         0.000568261,         0.568261,         568.261,               0.125,                 0.5,                  1,                  2,                20,                32,               96,              0.020068,           34.6774],
      Volume(1, VolumeUnit.imperialCup):        [           1.20095,           0.0750594,           0.300237,           0.600475,            1.18388,             9.6076,            19.2152,          57.6456,         0.000284131,         0.284131,         284.131,              0.0625,                0.25,                0.5,                  1,                10,                16,               48,              0.010034,           17.3387],
      Volume(1, VolumeUnit.imperialFluidOunce): [          0.120095,          0.00750594,          0.0300237,          0.0600475,           0.118388,            0.96076,            1.92152,          5.76456,           2.8413e-5,        0.0284131,         28.4131,             0.00625,               0.025,               0.05,                0.1,                 1,               1.6,              4.8,             0.0010034,           1.73387],
      Volume(1, VolumeUnit.imperialTablespoon): [         0.0750594,          0.00469121,          0.0187649,          0.0375297,          0.0739924,           0.600475,            1.20095,          3.60285,           1.7758e-5,        0.0177582,         17.7582,          0.00390625,            0.015625,            0.03125,             0.0625,             0.625,                 1,                3,           0.000627124,           1.08367],
      Volume(1, VolumeUnit.imperialTeaspoon):   [         0.0250198,          0.00156374,         0.00625495,          0.0125099,          0.0246641,           0.200158,           0.400317,          1.20095,           5.9194e-6,       0.00591939,         5.91939,          0.00130208,          0.00520834,          0.0104167,          0.0208333,          0.208333,          0.333333,                1,           0.000209041,          0.361223],
      Volume(1, VolumeUnit.cubicFoot):          [           119.688,             7.48052,            29.9221,            59.8442,            117.987,            957.506,            1915.01,          5745.04,           0.0283168,          28.3168,         28316.8,             6.22884,             24.9153,            49.8307,            99.6614,           996.614,           1594.58,          4783.74,                     1,              1728],
      Volume(1, VolumeUnit.cubicInch):          [         0.0692641,            0.004329,           0.017316,           0.034632,          0.0682794,           0.554113,            1.10823,          3.32468,           1.6387e-5,        0.0163871,         16.3871,          0.00360465,           0.0144186,          0.0288372,          0.0576744,          0.576744,           0.92279,          2.76837,           0.000578704,                 1],
    };

    test("should cover supported units", () {
      expect(VolumeUnit.values.length, implementation.values.first.length);
      expect(VolumeUnit.values.length, requirements.values.first.length);
    });

    implementation.forEach((actual, expected) {
      test("$actual should convert exactly", () {
        expect(actual.to(VolumeUnit.usCup).value, expected[0]);
        expect(actual.to(VolumeUnit.usLiquidGallon).value, expected[1]);
        expect(actual.to(VolumeUnit.usLiquidQuart).value, expected[2]);
        expect(actual.to(VolumeUnit.usLiquidPint).value, expected[3]);
        expect(actual.to(VolumeUnit.usLegalCup).value, expected[4]);
        expect(actual.to(VolumeUnit.usFluidOunce).value, expected[5]);
        expect(actual.to(VolumeUnit.usTablespoon).value, expected[6]);
        expect(actual.to(VolumeUnit.usTeaspoon).value, expected[7]);
        expect(actual.to(VolumeUnit.cubicMeter).value, expected[8]);
        expect(actual.to(VolumeUnit.liter).value, expected[9]);
        expect(actual.to(VolumeUnit.milliliter).value, expected[10]);
        expect(actual.to(VolumeUnit.imperialGallon).value, expected[11]);
        expect(actual.to(VolumeUnit.imperialQuart).value, expected[12]);
        expect(actual.to(VolumeUnit.imperialPint).value, expected[13]);
        expect(actual.to(VolumeUnit.imperialCup).value, expected[14]);
        expect(actual.to(VolumeUnit.imperialFluidOunce).value, expected[15]);
        expect(actual.to(VolumeUnit.imperialTablespoon).value, expected[16]);
        expect(actual.to(VolumeUnit.imperialTeaspoon).value, expected[17]);
        expect(actual.to(VolumeUnit.cubicFoot).value, expected[18]);
        expect(actual.to(VolumeUnit.cubicInch).value, expected[19]);
      });
    });

    requirements.forEach((actual, expected) {
      test("$actual should convert closely", () {
        expect(actual.to(VolumeUnit.usCup).value, lessPreciseOrEquals(expected[0]));
        expect(actual.to(VolumeUnit.usLiquidGallon).value, lessPreciseOrEquals(expected[1]));
        expect(actual.to(VolumeUnit.usLiquidQuart).value, lessPreciseOrEquals(expected[2]));
        expect(actual.to(VolumeUnit.usLiquidPint).value, lessPreciseOrEquals(expected[3]));
        expect(actual.to(VolumeUnit.usLegalCup).value, lessPreciseOrEquals(expected[4]));
        expect(actual.to(VolumeUnit.usFluidOunce).value, lessPreciseOrEquals(expected[5]));
        expect(actual.to(VolumeUnit.usTablespoon).value, lessPreciseOrEquals(expected[6]));
        expect(actual.to(VolumeUnit.usTeaspoon).value, lessPreciseOrEquals(expected[7]));
        expect(actual.to(VolumeUnit.cubicMeter).value, lessPreciseOrEquals(expected[8]));
        expect(actual.to(VolumeUnit.liter).value, lessPreciseOrEquals(expected[9]));
        expect(actual.to(VolumeUnit.milliliter).value, lessPreciseOrEquals(expected[10]));
        expect(actual.to(VolumeUnit.imperialGallon).value, lessPreciseOrEquals(expected[11]));
        expect(actual.to(VolumeUnit.imperialQuart).value, lessPreciseOrEquals(expected[12]));
        expect(actual.to(VolumeUnit.imperialPint).value, lessPreciseOrEquals(expected[13]));
        expect(actual.to(VolumeUnit.imperialCup).value, lessPreciseOrEquals(expected[14]));
        expect(actual.to(VolumeUnit.imperialFluidOunce).value, lessPreciseOrEquals(expected[15]));
        expect(actual.to(VolumeUnit.imperialTablespoon).value, lessPreciseOrEquals(expected[16]));
        expect(actual.to(VolumeUnit.imperialTeaspoon).value, lessPreciseOrEquals(expected[17]));
        expect(actual.to(VolumeUnit.cubicFoot).value, lessPreciseOrEquals(expected[18]));
        expect(actual.to(VolumeUnit.cubicInch).value, lessPreciseOrEquals(expected[19]));
      });
    });

    test("should use standard symbols", () {
      expect(Volume(1, VolumeUnit.usCup).toString(), "1.0 us cup");
      expect(Volume(1, VolumeUnit.usLiquidGallon).toString(), "1.0 us gal");
      expect(Volume(1, VolumeUnit.usLiquidQuart).toString(), "1.0 us qt");
      expect(Volume(1, VolumeUnit.usLiquidPint).toString(), "1.0 us pt");
      expect(Volume(1, VolumeUnit.usLegalCup).toString(), "1.0 us legal cup");
      expect(Volume(1, VolumeUnit.usFluidOunce).toString(), "1.0 us fl oz");
      expect(Volume(1, VolumeUnit.usTablespoon).toString(), "1.0 us tbsp");
      expect(Volume(1, VolumeUnit.usTeaspoon).toString(), "1.0 us tsp");
      expect(Volume(1, VolumeUnit.cubicMeter).toString(), "1.0 m³");
      expect(Volume(1, VolumeUnit.liter).toString(), "1.0 L");
      expect(Volume(1, VolumeUnit.milliliter).toString(), "1.0 mL");
      expect(Volume(1, VolumeUnit.imperialGallon).toString(), "1.0 imperial gal");
      expect(Volume(1, VolumeUnit.imperialQuart).toString(), "1.0 imperial qt");
      expect(Volume(1, VolumeUnit.imperialPint).toString(), "1.0 imperial pt");
      expect(Volume(1, VolumeUnit.imperialCup).toString(), "1.0 imperial cup");
      expect(Volume(1, VolumeUnit.imperialFluidOunce).toString(), "1.0 imperial fl oz");
      expect(Volume(1, VolumeUnit.imperialTablespoon).toString(), "1.0 imperial tbsp");
      expect(Volume(1, VolumeUnit.imperialTeaspoon).toString(), "1.0 imperial tsp");
      expect(Volume(1, VolumeUnit.cubicFoot).toString(), "1.0 ft³");
      expect(Volume(1, VolumeUnit.cubicInch).toString(), "1.0 in³");
    });
  });
}
