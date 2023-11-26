import '../../energy_unit.dart';
import 'british_thermal_unit.dart';
import 'electronvolt.dart';
import 'energy_value.dart';
import 'gram_calorie.dart';
import 'joule.dart';
import 'kilocalorie.dart';
import 'kilojoule.dart';
import 'kilowatt_hour.dart';
import 'us_therm.dart';
import 'watt_hour.dart';

class FootPound extends EnergyValue {
  FootPound(double britishThermalUnit) : super(britishThermalUnit);

  @override
  EnergyValue to(EnergyUnit unit) =>
      switch(unit) {
        EnergyUnit.joule => Joule(value * 1.3558179483314),
        EnergyUnit.kilojoule => Kilojoule(value * 0.0013558179483314),
        EnergyUnit.gramCalorie => GramCalorie(value * 0.32404826680961),
        EnergyUnit.kilocalorie => Kilocalorie(value * 0.00032404826680961),
        EnergyUnit.wattHour => WattHour(value * 0.00037661609675872),
        EnergyUnit.kilowattHour => KilowattHour(value *  3.7661609675872e-7),
        EnergyUnit.electronvolt => Electronvolt(value * 8.4623503922703e+18),
        EnergyUnit.britishThermalUnit => BritishThermalUnit(value * 0.0012850674634566),
        EnergyUnit.usTherm => UsTherm(value * 1.2853742954439e-8),
        EnergyUnit.footPound => FootPound(value),
      };

  @override
  toString() => '${super.toString()} ft·lb';
}