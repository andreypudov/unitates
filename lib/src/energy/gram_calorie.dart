import '../../energy_unit.dart';
import 'british_thermal_unit.dart';
import 'electronvolt.dart';
import 'energy_value.dart';
import 'foot_pound.dart';
import 'joule.dart';
import 'kilocalorie.dart';
import 'kilojoule.dart';
import 'kilowatt_hour.dart';
import 'us_therm.dart';
import 'watt_hour.dart';

class GramCalorie extends EnergyValue {
  GramCalorie(double britishThermalUnit) : super(britishThermalUnit);

  @override
  EnergyValue to(EnergyUnit unit) =>
      switch(unit) {
        EnergyUnit.joule => Joule(value * 4.184),
        EnergyUnit.kilojoule => Kilojoule(value * 0.004184),
        EnergyUnit.gramCalorie => GramCalorie(value),
        EnergyUnit.kilocalorie => Kilocalorie(value * 0.001),
        EnergyUnit.wattHour => WattHour(value * 0.0011622222222222),
        EnergyUnit.kilowattHour => KilowattHour(value * 1.1622222222222e-6),
        EnergyUnit.electronvolt => Electronvolt(value * 2.6114475092201e+19),
        EnergyUnit.britishThermalUnit => BritishThermalUnit(value * 0.0039656668313909),
        EnergyUnit.usTherm => UsTherm(value * 3.9666137026405e-8),
        EnergyUnit.footPound => FootPound(value * 3.0859600325761),
      };

  @override
  toString() => '${super.toString()} cal';
}