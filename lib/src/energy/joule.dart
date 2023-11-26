import '../../energy_unit.dart';
import 'british_thermal_unit.dart';
import 'electronvolt.dart';
import 'energy_value.dart';
import 'foot_pound.dart';
import 'gram_calorie.dart';
import 'kilocalorie.dart';
import 'kilojoule.dart';
import 'kilowatt_hour.dart';
import 'us_therm.dart';
import 'watt_hour.dart';

class Joule extends EnergyValue {
  Joule(double britishThermalUnit) : super(britishThermalUnit);

  @override
  EnergyValue to(EnergyUnit unit) =>
      switch(unit) {
        EnergyUnit.joule => Joule(value),
        EnergyUnit.kilojoule => Kilojoule(value * 0.001),
        EnergyUnit.gramCalorie => GramCalorie(value * 0.23900573613767),
        EnergyUnit.kilocalorie => Kilocalorie(value * 0.00023900573613767),
        EnergyUnit.wattHour => WattHour(value * 0.00027777777777778),
        EnergyUnit.kilowattHour => KilowattHour(value * 2.7777777777778e-7),
        EnergyUnit.electronvolt => Electronvolt(value * 6.2415093432602e+18),
        EnergyUnit.britishThermalUnit => BritishThermalUnit(value * 0.00094781712031332),
        EnergyUnit.usTherm => UsTherm(value * 9.4804342797335e-9),
        EnergyUnit.footPound => FootPound(value * 0.73756214927727),
      };

  @override
  toString() => '${super.toString()} J';
}