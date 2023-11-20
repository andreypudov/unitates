import '../../speed_unit.dart';
import 'kilometer_per_hour.dart';
import 'knot.dart';
import 'meter_per_second.dart';
import 'mile_per_hour.dart';
import 'speed_value.dart';


class FootPerSecond extends SpeedValue {
  FootPerSecond(double speed) : super(speed);

  @override
  SpeedValue to(SpeedUnit unit) =>
      switch(unit) {
        SpeedUnit.milePerHour => MilePerHour(value / 1.46667),
        SpeedUnit.footPerSecond => FootPerSecond(value),
        SpeedUnit.meterPerSecond => MeterPerSecond(value / 3.28084),
        SpeedUnit.kilometerPerHour => KilometerPerHour(value * 1.09728),
        SpeedUnit.knot => Knot(value / 1.68781),
      };

  @override
  toString() => '${super.toString()} ft/s';
}