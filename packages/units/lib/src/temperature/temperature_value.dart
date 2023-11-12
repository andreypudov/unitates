import '../../temperature_unit.dart';
import 'celsius.dart';
import 'fahrenheit.dart';
import 'kelvin.dart';

abstract class TemperatureValue {
  final double value;

  TemperatureValue(this.value);

  factory TemperatureValue.from(TemperatureUnit unit, double value) {
    return switch (unit) {
      TemperatureUnit.celsius => Celsius(value),
      TemperatureUnit.fahrenheit => Fahrenheit(value),
      TemperatureUnit.kelvin => Kelvin(value),
    };
  }

  TemperatureValue to(TemperatureUnit unit);

  @override
  toString() => value.toString();
}