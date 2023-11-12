import '../../temperature_unit.dart';
import 'celsius.dart';
import 'kelvin.dart';
import 'temperature_value.dart';

class Fahrenheit extends TemperatureValue {
  Fahrenheit(double temperature) : super(temperature);

  @override
  TemperatureValue to(TemperatureUnit unit) =>
      switch(unit) {
        TemperatureUnit.celsius => Celsius(value),
        TemperatureUnit.fahrenheit => Fahrenheit(value),
        TemperatureUnit.kelvin => Kelvin(value),
      };
}