import '../../speed_unit.dart';
import 'foot_per_second.dart';
import 'kilometer_per_hour.dart';
import 'knot.dart';
import 'meter_per_second.dart';
import 'mile_per_hour.dart';

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

  @override
  toString() => value.toString();
}