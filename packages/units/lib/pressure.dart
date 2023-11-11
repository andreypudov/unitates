import 'pressure_unit.dart';
import 'src/pressure/pressure_value.dart';

class Pressure {
  PressureValue value;

  Pressure(double pressure, PressureUnit unit):
        value = PressureValue.from(unit, pressure);

  to(PressureUnit unit) => value.to(unit);
}