import 'package:flutter_test/flutter_test.dart';

import 'package:units/energy.dart';
import 'package:units/energy_unit.dart';

import 'src/less_precise_or_equals.dart';

void main() {
  group("should convert correctly", () {
    Map<Energy, List<double>> implementation = {
      /*                                                       J                   kJ                  cal                 kcal                  Wh                  kWh                    eV                 Btu                therm               ft·lb */
      Energy(1, EnergyUnit.joule):              [              1,               0.001,    0.23900573613767, 0.00023900573613767, 0.00027777777777778,  2.7777777777778e-7,  6.2415093432602e+18, 0.00094781712031332,  9.4804342797335e-9,    0.73756214927727],
      Energy(1, EnergyUnit.kilojoule):          [           1000,                   1,     239.00573613767,    0.23900573613767,    0.27777777777778, 0.00027777777777778,  6.2415093432602e+21,    0.94781712031332,  9.4804342797335e-6,     737.56214927727],
      Energy(1, EnergyUnit.gramCalorie):        [          4.184,            0.004184,                   1,               0.001,  0.0011622222222222,  1.1622222222222e-6,  2.6114475092201e+19,  0.0039656668313909,  3.9666137026405e-8,     3.0859600325761],
      Energy(1, EnergyUnit.kilocalorie):        [           4184,               4.184,                1000,                   1,  1.1622222222222223,  0.0011622222222222,  2.6114475092201e+22,     3.9656668313909,  3.9666137026405e-5,     3085.9600325761],
      Energy(1, EnergyUnit.wattHour):           [           3600,                 3.6,      860.4206500956,     0.8604206500956,                   1,               0.001, 2.24694336357372e+22,     3.4121416331279,  3.4129563407041e-5,     2655.2237373982],
      Energy(1, EnergyUnit.kilowattHour):       [         3.6e+6,                3600,      860420.6500956,      860.4206500956,                1000,                   1, 2.24694336357372e+25,     3412.1416331279,   0.034129563407041,     2655223.7373982],
      Energy(1, EnergyUnit.electronvolt):       [1.602176565e-19,     1.602176565e-22, 3.8292938934034e-20, 3.8292938934034e-23, 4.4504904583333e-23, 4.4504904583333e-26,                    1, 1.5185703780718e-22, 1.5189329629012e-27, 1.1817047908031e-19],
      Energy(1, EnergyUnit.britishThermalUnit): [  1055.05585262,       1.05505585262,      252.1644007218,     0.2521644007218,    0.29307107017222, 0.00029307107017222,  6.5851409617891e+21,                   1,  1.0002387672212e-5,     778.16926226596],
      Energy(1, EnergyUnit.usTherm):            [  1.05480400e+8,            105480.4,     25210420.650096,     25210.420650096,     29300.111111111,     29.300111111111,  6.5835690213082e+26,     99976.128977497,                   1,     77798350.530626],
      Energy(1, EnergyUnit.footPound):          [1.3558179483314,  0.0013558179483314,    0.32404826680961, 0.00032404826680961, 0.00037661609675872,  3.7661609675872e-7,  8.4623503922703e+18,  0.0012850674634566,  1.2853742954439e-8,                   1],
    };

    Map<Energy, List<double>> requirements = {
      /*                                                       J                   kJ                  cal                 kcal                   Wh                  kWh                    eV                  Btu                therm                ft·lb */
      Energy(1, EnergyUnit.joule):              [              1,               0.001,            0.239006,         0.000239006,         0.000277778,           2.7778e-7,            6.242e+18,         0.000947817,           9.4804e-9,            0.737562],
      Energy(1, EnergyUnit.kilojoule):          [           1000,                   1,             239.006,            0.239006,            0.277778,         0.000277778,            6.242e+21,            0.947817,           9.4804e-6,             737.562],
      Energy(1, EnergyUnit.gramCalorie):        [          4.184,            0.004184,                   1,               0.001,          0.00116222,           1.1622e-6,            2.611e+19,          0.00396567,           3.9666e-8,             3.08596],
      Energy(1, EnergyUnit.kilocalorie):        [           4184,               4.184,                1000,                   1,             1.16222,          0.00116222,            2.611e+22,             3.96567,           3.9666e-5,             3085.96],
      Energy(1, EnergyUnit.wattHour):           [           3600,                 3.6,             860.421,            0.860421,                   1,               0.001,            2.247e+22,             3.41214,            3.413e-5,             2655.22],
      Energy(1, EnergyUnit.kilowattHour):       [         3.6e+6,                3600,              860421,             860.421,                1000,                   1,            2.247e+25,             3412.14,           0.0341296,            2.655e+6],
      Energy(1, EnergyUnit.electronvolt):       [     1.6022e-19,          1.6022e-22,          3.8293e-20,          3.8293e-23,          4.4505e-23,          4.4505e-26,                    1,          1.5186e-22,          1.5189e-27,          1.1817e-19],
      Energy(1, EnergyUnit.britishThermalUnit): [        1055.06,             1.05506,             252.164,            0.252164,            0.293071,         0.000293071,            6.585e+21,                   1,           1.0002e-5,             778.169],
      Energy(1, EnergyUnit.usTherm):            [       1.055e+8,              105480,            2.521e+7,             25210.4,             29300.1,             29.3001,            6.584e+26,             99976.1,                   1,             7.78e+7],
      Energy(1, EnergyUnit.footPound):          [        1.35582,          0.00135582,            0.324048,         0.000324048,         0.000376616,           3.7662e-7,            8.462e+18,          0.00128507,           1.2854e-8,                   1],
    };

    test("should cover supported units", () {
      expect(EnergyUnit.values.length, implementation.values.first.length);
      expect(EnergyUnit.values.length, requirements.values.first.length);
    });

    implementation.forEach((actual, expected) {
      test("$actual should convert exactly", () {
        expect(actual.to(EnergyUnit.joule).value, expected[0]);
        expect(actual.to(EnergyUnit.kilojoule).value, expected[1]);
        expect(actual.to(EnergyUnit.gramCalorie).value, expected[2]);
        expect(actual.to(EnergyUnit.kilocalorie).value, expected[3]);
        expect(actual.to(EnergyUnit.wattHour).value, expected[4]);
        expect(actual.to(EnergyUnit.kilowattHour).value, expected[5]);
        expect(actual.to(EnergyUnit.electronvolt).value, expected[6]);
        expect(actual.to(EnergyUnit.britishThermalUnit).value, expected[7]);
        expect(actual.to(EnergyUnit.usTherm).value, expected[8]);
        expect(actual.to(EnergyUnit.footPound).value, expected[9]);
      });
    });

    requirements.forEach((actual, expected) {
      test("$actual should convert closely", () {
        expect(actual.to(EnergyUnit.joule).value, lessPreciseOrEquals(expected[0]));
        expect(actual.to(EnergyUnit.kilojoule).value, lessPreciseOrEquals(expected[1]));
        expect(actual.to(EnergyUnit.gramCalorie).value, lessPreciseOrEquals(expected[2]));
        expect(actual.to(EnergyUnit.kilocalorie).value, lessPreciseOrEquals(expected[3]));
        expect(actual.to(EnergyUnit.wattHour).value, lessPreciseOrEquals(expected[4]));
        expect(actual.to(EnergyUnit.kilowattHour).value, lessPreciseOrEquals(expected[5]));
        expect(actual.to(EnergyUnit.electronvolt).value, lessPreciseOrEquals(expected[6]));
        expect(actual.to(EnergyUnit.britishThermalUnit).value, lessPreciseOrEquals(expected[7]));
        expect(actual.to(EnergyUnit.usTherm).value, lessPreciseOrEquals(expected[8]));
        expect(actual.to(EnergyUnit.footPound).value, lessPreciseOrEquals(expected[9]));
      });
    });

    test("should use standard symbols", () {
      expect(Energy(1, EnergyUnit.joule).toString(), "1.0 J");
      expect(Energy(1, EnergyUnit.kilojoule).toString(), "1.0 kJ");
      expect(Energy(1, EnergyUnit.gramCalorie).toString(), "1.0 cal");
      expect(Energy(1, EnergyUnit.kilocalorie).toString(), "1.0 kcal");
      expect(Energy(1, EnergyUnit.wattHour).toString(), "1.0 Wh");
      expect(Energy(1, EnergyUnit.kilowattHour).toString(), "1.0 kWh");
      expect(Energy(1, EnergyUnit.electronvolt).toString(), "1.0 eV");
      expect(Energy(1, EnergyUnit.britishThermalUnit).toString(), "1.0 Btu");
      expect(Energy(1, EnergyUnit.usTherm).toString(), "1.0 therm");
      expect(Energy(1, EnergyUnit.footPound).toString(), "1.0 ft·lb");
    });
  });
}
