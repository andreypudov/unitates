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
        TemperatureUnit.fahrenheit => Fahrenheit((value * 9/5) + 32),
        TemperatureUnit.kelvin => Kelvin(value + 273.15),
      };

  @override
  toString() => '${super.toString()} °C';
}