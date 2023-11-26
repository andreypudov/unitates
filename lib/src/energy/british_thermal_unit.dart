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
        EnergyUnit.joule => Joule(value * 1055.05585262),
        EnergyUnit.kilojoule => Kilojoule(value * 1.05505585262),
        EnergyUnit.gramCalorie => GramCalorie(value * 252.1644007218),
        EnergyUnit.kilocalorie => Kilocalorie(value * 0.2521644007218),
        EnergyUnit.wattHour => WattHour(value * 0.29307107017222),
        EnergyUnit.kilowattHour => KilowattHour(value * 0.00029307107017222),
        EnergyUnit.electronvolt => Electronvolt(value * 6.5851409617891e+21),
        EnergyUnit.britishThermalUnit => BritishThermalUnit(value),
        EnergyUnit.usTherm => UsTherm(value * 1.0002387672212e-5),
        EnergyUnit.footPound => FootPound(value * 778.16926226596),
      };

  @override
  toString() => '${super.toString()} Btu';
}