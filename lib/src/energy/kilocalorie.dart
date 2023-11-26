import '../../energy_unit.dart';
import 'british_thermal_unit.dart';
import 'electronvolt.dart';
import 'energy_value.dart';
import 'foot_pound.dart';
import 'gram_calorie.dart';
import 'joule.dart';
import 'kilojoule.dart';
import 'kilowatt_hour.dart';
import 'us_therm.dart';
import 'watt_hour.dart';

class Kilocalorie extends EnergyValue {
  Kilocalorie(double britishThermalUnit) : super(britishThermalUnit);

  @override
  EnergyValue to(EnergyUnit unit) =>
      switch(unit) {
        EnergyUnit.joule => Joule(value * 4184),
        EnergyUnit.kilojoule => Kilojoule(value * 4.184),
        EnergyUnit.gramCalorie => GramCalorie(value * 1000),
        EnergyUnit.kilocalorie => Kilocalorie(value),
        EnergyUnit.wattHour => WattHour(value * 1.1622222222222222),
        EnergyUnit.kilowattHour => KilowattHour(value * 0.0011622222222222),
        EnergyUnit.electronvolt => Electronvolt(value * 2.6114475092201e+22),
        EnergyUnit.britishThermalUnit => BritishThermalUnit(value * 3.9656668313909),
        EnergyUnit.usTherm => UsTherm(value * 3.9666137026405e-5),
        EnergyUnit.footPound => FootPound(value * 3085.9600325761),
      };

  @override
  toString() => '${super.toString()} kcal';
}