import 'temperature_unit.dart';
import 'src/temperature/temperature_value.dart';

class Temperature {
  TemperatureValue value;

  Temperature(double temperature, TemperatureUnit unit):
        value = TemperatureValue.from(unit, temperature);

  to(TemperatureUnit unit) => value.to(unit);
}