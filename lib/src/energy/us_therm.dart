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
import 'watt_hour.dart';

class UsTherm extends EnergyValue {
  UsTherm(double britishThermalUnit) : super(britishThermalUnit);

  @override
  EnergyValue to(EnergyUnit unit) =>
      switch(unit) {
        EnergyUnit.joule => Joule(value * 105480400),
        EnergyUnit.kilojoule => Kilojoule(value * 105480.4),
        EnergyUnit.gramCalorie => GramCalorie(value * 25210420.650096),
        EnergyUnit.kilocalorie => Kilocalorie(value * 25210.420650096),
        EnergyUnit.wattHour => WattHour(value * 29300.111111111),
        EnergyUnit.kilowattHour => KilowattHour(value * 29.300111111111),
        EnergyUnit.electronvolt => Electronvolt(value * 6.5835690213082e+26),
        EnergyUnit.britishThermalUnit => BritishThermalUnit(value * 99976.128977497),
        EnergyUnit.usTherm => UsTherm(value),
        EnergyUnit.footPound => FootPound(value * 77798350.530626),
      };

  @override
  toString() => '${super.toString()} therm';
}