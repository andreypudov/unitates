import '../../energy_unit.dart';

abstract class EnergyValue {
  final double value;

  EnergyValue(this.value);

  factory EnergyValue.from(EnergyUnit unit, double value) {
    return switch (unit) {
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

  EnergyValue to(EnergyUnit unit);
}