import '../../speed_unit.dart';
import 'foot_per_second.dart';
import 'kilometer_per_hour.dart';
import 'meter_per_second.dart';
import 'mile_per_hour.dart';
import 'speed_value.dart';

class Knot extends SpeedValue {
  Knot(double speed) : super(speed);

  @override
  SpeedValue to(SpeedUnit unit) =>
      switch(unit) {
        SpeedUnit.milePerHour => MilePerHour(value * 1.15078),
        SpeedUnit.footPerSecond => FootPerSecond(value * 1.68781),
        SpeedUnit.meterPerSecond => MeterPerSecond(value / 1.94384),
        SpeedUnit.kilometerPerHour => KilometerPerHour(value * 1.852),
        SpeedUnit.knot => Knot(value),
      };

  @override
  toString() => '${super.toString()} kn';
}