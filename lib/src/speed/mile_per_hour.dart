import '../../speed_unit.dart';
import 'foot_per_second.dart';
import 'kilometer_per_hour.dart';
import 'knot.dart';
import 'meter_per_second.dart';
import 'speed_value.dart';


class MilePerHour extends SpeedValue {
  MilePerHour(double speed) : super(speed);

  @override
  SpeedValue to(SpeedUnit unit) =>
      switch(unit) {
        SpeedUnit.milePerHour => MilePerHour(value),
        SpeedUnit.footPerSecond => FootPerSecond(value * 1.4666666667),
        SpeedUnit.meterPerSecond => MeterPerSecond(value * 0.44704),
        SpeedUnit.kilometerPerHour => KilometerPerHour(value * 1.60934),
        SpeedUnit.knot => Knot(value * 0.8689762419),
      };

  @override
  toString() => '${super.toString()} mph';
}