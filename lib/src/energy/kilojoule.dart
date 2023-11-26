import '../../energy_unit.dart';
import 'british_thermal_unit.dart';
import 'electronvolt.dart';
import 'energy_value.dart';
import 'foot_pound.dart';
import 'gram_calorie.dart';
import 'joule.dart';
import 'kilocalorie.dart';
import 'kilowatt_hour.dart';
import 'us_therm.dart';
import 'watt_hour.dart';

class Kilojoule extends EnergyValue {
  Kilojoule(double britishThermalUnit) : super(britishThermalUnit);

  @override
  EnergyValue to(EnergyUnit unit) =>
      switch(unit) {
        EnergyUnit.joule => Joule(value * 1000),
        EnergyUnit.kilojoule => Kilojoule(value),
        EnergyUnit.gramCalorie => GramCalorie(value * 239.00573613767),
        EnergyUnit.kilocalorie => Kilocalorie(value * 0.23900573613767),
        EnergyUnit.wattHour => WattHour(value * 0.27777777777778),
        EnergyUnit.kilowattHour => KilowattHour(value * 0.00027777777777778),
        EnergyUnit.electronvolt => Electronvolt(value * 6.2415093432602e+21),
        EnergyUnit.britishThermalUnit => BritishThermalUnit(value * 0.94781712031332),
        EnergyUnit.usTherm => UsTherm(value * 9.4804342797335e-6),
        EnergyUnit.footPound => FootPound(value * 737.56214927727),
      };

  @override
  toString() => '${super.toString()} kJ';
}