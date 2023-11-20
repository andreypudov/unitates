import '../../temperature_unit.dart';
import 'celsius.dart';
import 'fahrenheit.dart';
import 'temperature_value.dart';

class Kelvin extends TemperatureValue {
  Kelvin(double temperature) : super(temperature);

  @override
  TemperatureValue to(TemperatureUnit unit) =>
      switch(unit) {
        TemperatureUnit.celsius => Celsius(value - 273.15),
        TemperatureUnit.fahrenheit => Fahrenheit((value - 273.15) * 9/5 + 32),
        TemperatureUnit.kelvin => Kelvin(value),
      };

  @override
  toString() => '${super.toString()} K';
}