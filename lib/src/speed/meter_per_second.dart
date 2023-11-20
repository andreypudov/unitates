import '../../speed_unit.dart';
import 'foot_per_second.dart';
import 'kilometer_per_hour.dart';
import 'knot.dart';
import 'mile_per_hour.dart';
import 'speed_value.dart';


class MeterPerSecond extends SpeedValue {
  MeterPerSecond(double speed) : super(speed);

  @override
  SpeedValue to(SpeedUnit unit) =>
      switch(unit) {
        SpeedUnit.milePerHour => MilePerHour(value * 2.23694),
        SpeedUnit.footPerSecond => FootPerSecond(value * 3.28084),
        SpeedUnit.meterPerSecond => MeterPerSecond(value),
        SpeedUnit.kilometerPerHour => KilometerPerHour(value * 3.6),
        SpeedUnit.knot => Knot(value * 1.94384),
      };

  @override
  toString() => '${super.toString()} m/s';
}