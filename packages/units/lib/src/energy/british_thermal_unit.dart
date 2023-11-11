import '../../energy_unit.dart';
import 'electronvolt.dart';
import 'energy_value.dart';
import 'foot_pound.dart';
import 'gram_calorie.dart';
import 'joule.dart';
import 'kilocalorie.dart';
import 'kilojoule.dart';
import 'kilowatt_hour.dart';
import 'us_therm.dart';
import 'watt_hour.dart';

class BritishThermalUnit extends EnergyValue {
  BritishThermalUnit(double britishThermalUnit) : super(britishThermalUnit);

  @override
  EnergyValue to(EnergyUnit unit) =>
      switch(unit) {
        EnergyUnit.joule => Joule(value),
        EnergyUnit.kilojoule => Kilojoule(value),
        EnergyUnit.gramCalorie => GramCalorie(value),
        EnergyUnit.kilocalorie => Kilocalorie(value),
        EnergyUnit.wattHour => WattHour(value),
        EnergyUnit.kilowattHour => KilowattHour(value),
        EnergyUnit.electronvolt => Electronvolt(value),
        EnergyUnit.britishThermalUnit => BritishThermalUnit(value),
        EnergyUnit.usTherm => UsTherm(value),
        EnergyUnit.footPound => FootPound(value),
      };
}