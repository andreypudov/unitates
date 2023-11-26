import '../../energy_unit.dart';
import 'british_thermal_unit.dart';
import 'electronvolt.dart';
import 'energy_value.dart';
import 'foot_pound.dart';
import 'gram_calorie.dart';
import 'joule.dart';
import 'kilocalorie.dart';
import 'kilojoule.dart';
import 'us_therm.dart';
import 'watt_hour.dart';

class KilowattHour extends EnergyValue {
  KilowattHour(double britishThermalUnit) : super(britishThermalUnit);

  @override
  EnergyValue to(EnergyUnit unit) =>
      switch(unit) {
        EnergyUnit.joule => Joule(value * 3600000),
        EnergyUnit.kilojoule => Kilojoule(value * 3600),
        EnergyUnit.gramCalorie => GramCalorie(value * 860420.6500956),
        EnergyUnit.kilocalorie => Kilocalorie(value * 860.4206500956),
        EnergyUnit.wattHour => WattHour(value * 1000),
        EnergyUnit.kilowattHour => KilowattHour(value),
        EnergyUnit.electronvolt => Electronvolt(value * 2.24694336357372e+25),
        EnergyUnit.britishThermalUnit => BritishThermalUnit(value * 3412.1416331279),
        EnergyUnit.usTherm => UsTherm(value * 0.034129563407041),
        EnergyUnit.footPound => FootPound(value * 2655223.7373982),
      };

  @override
  toString() => '${super.toString()} kWh';
}