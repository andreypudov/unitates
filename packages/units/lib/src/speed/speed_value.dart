import '../../speed_unit.dart';

abstract class SpeedValue {
  final double value;

  SpeedValue(this.value);

  factory SpeedValue.from(SpeedUnit unit, double value) {
    return switch (unit) {
      SpeedUnit.milePerHour => MilePerHour(value),
      SpeedUnit.footPerSecond => FootPerSecond(value),
      SpeedUnit.meterPerSecond => MeterPerSecond(value),
      SpeedUnit.kilometerPerHour => KilometerPerHour(value),
      SpeedUnit.knot => Knot(value),
    };
  }

  SpeedValue to(SpeedUnit unit);
}