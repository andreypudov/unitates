import '../../energy_unit.dart';
import 'british_thermal_unit.dart';
import 'electronvolt.dart';
import 'energy_value.dart';
import 'foot_pound.dart';
import 'gram_calorie.dart';
import 'joule.dart';
import 'kilocalorie.dart';
import 'kilojoule.dart';
import 'kilowatt_hour.dart';
import 'us_therm.dart';

class WattHour extends EnergyValue {
  WattHour(double britishThermalUnit) : super(britishThermalUnit);

  @override
  EnergyValue to(EnergyUnit unit) =>
      switch(unit) {
        EnergyUnit.joule => Joule(value * 3600),
        EnergyUnit.kilojoule => Kilojoule(value * 3.6),
        EnergyUnit.gramCalorie => GramCalorie(value * 860.4206500956),
        EnergyUnit.kilocalorie => Kilocalorie(value * 0.8604206500956),
        EnergyUnit.wattHour => WattHour(value),
        EnergyUnit.kilowattHour => KilowattHour(value * 0.001),
        EnergyUnit.electronvolt => Electronvolt(value * 2.24694336357372e+22),
        EnergyUnit.britishThermalUnit => BritishThermalUnit(value * 3.4121416331279),
        EnergyUnit.usTherm => UsTherm(value * 3.4129563407041e-5),
        EnergyUnit.footPound => FootPound(value * 2655.2237373982),
      };

  @override
  toString() => '${super.toString()} Wh';
}