import '../../temperature_unit.dart';
import 'celsius.dart';
import 'fahrenheit.dart';
import 'temperature_value.dart';

class Kelvin extends TemperatureValue {
  Kelvin(double temperature) : super(temperature);

  @override
  TemperatureValue to(TemperatureUnit unit) =>
      switch(unit) {
        TemperatureUnit.celsius => Celsius(value),
        TemperatureUnit.fahrenheit => Fahrenheit(value),
        TemperatureUnit.kelvin => Kelvin(value),
      };

  @override
  toString() => '${super.toString()} K';
}