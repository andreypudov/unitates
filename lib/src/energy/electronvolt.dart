import '../../energy_unit.dart';
import 'british_thermal_unit.dart';
import 'energy_value.dart';
import 'foot_pound.dart';
import 'gram_calorie.dart';
import 'joule.dart';
import 'kilocalorie.dart';
import 'kilojoule.dart';
import 'kilowatt_hour.dart';
import 'us_therm.dart';
import 'watt_hour.dart';

class Electronvolt extends EnergyValue {
  Electronvolt(double britishThermalUnit) : super(britishThermalUnit);

  @override
  EnergyValue to(EnergyUnit unit) =>
      switch(unit) {
        EnergyUnit.joule => Joule(value * 1.602176565e-19),
        EnergyUnit.kilojoule => Kilojoule(value * 1.602176565e-22),
        EnergyUnit.gramCalorie => GramCalorie(value * 3.8292938934034e-20),
        EnergyUnit.kilocalorie => Kilocalorie(value * 3.8292938934034e-23),
        EnergyUnit.wattHour => WattHour(value * 4.4504904583333e-23),
        EnergyUnit.kilowattHour => KilowattHour(value * 4.4504904583333e-26),
        EnergyUnit.electronvolt => Electronvolt(value),
        EnergyUnit.britishThermalUnit => BritishThermalUnit(value * 1.5185703780718e-22),
        EnergyUnit.usTherm => UsTherm(value * 1.5189329629012e-27),
        EnergyUnit.footPound => FootPound(value * 1.1817047908031e-19),
      };

  @override
  toString() => '${super.toString()} eV';
}