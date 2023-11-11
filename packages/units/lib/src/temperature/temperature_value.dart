import '../../temperature_unit.dart';

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
}