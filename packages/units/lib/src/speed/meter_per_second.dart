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
        SpeedUnit.milePerHour => MilePerHour(value),
        SpeedUnit.footPerSecond => FootPerSecond(value),
        SpeedUnit.meterPerSecond => MeterPerSecond(value),
        SpeedUnit.kilometerPerHour => KilometerPerHour(value),
        SpeedUnit.knot => Knot(value),
      };

  @override
  toString() => '${super.toString()} m/s';
}