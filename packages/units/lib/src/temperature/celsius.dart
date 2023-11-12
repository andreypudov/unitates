import '../../temperature_unit.dart';
import 'fahrenheit.dart';
import 'kelvin.dart';
import 'temperature_value.dart';

class Celsius extends TemperatureValue {
  Celsius(double temperature) : super(temperature);

  @override
  TemperatureValue to(TemperatureUnit unit) =>
      switch(unit) {
        TemperatureUnit.celsius => Celsius(value),
        TemperatureUnit.fahrenheit => Fahrenheit(value),
        TemperatureUnit.kelvin => Kelvin(value),
      };
}