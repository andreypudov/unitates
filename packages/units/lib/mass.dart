import 'mass_unit.dart';
import 'src/mass/mass_value.dart';

class Mass {
  MassValue value;

  Mass(double mass, MassUnit unit):
        value = MassValue.from(unit, mass);

  to(MassUnit unit) => value.to(unit);
}