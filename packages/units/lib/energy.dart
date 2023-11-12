import 'energy_unit.dart';
import 'src/energy/energy_value.dart';

class Energy {
  EnergyValue value;

  Energy(double energy, EnergyUnit unit):
        value = EnergyValue.from(unit, energy);

  to(EnergyUnit unit) => value.to(unit);

  @override
  toString() => value.toString();
}