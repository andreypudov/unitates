import '../../speed_unit.dart';
import 'foot_per_second.dart';
import 'knot.dart';
import 'meter_per_second.dart';
import 'mile_per_hour.dart';
import 'speed_value.dart';


class KilometerPerHour extends SpeedValue {
  KilometerPerHour(double speed) : super(speed);

  @override
  SpeedValue to(SpeedUnit unit) =>
      switch(unit) {
        SpeedUnit.milePerHour => MilePerHour(value * 0.6213711922),
        SpeedUnit.footPerSecond => FootPerSecond(value * 0.9113444153),
        SpeedUnit.meterPerSecond => MeterPerSecond(value / 3.6),
        SpeedUnit.kilometerPerHour => KilometerPerHour(value),
        SpeedUnit.knot => Knot(value * 0.5399568035),
      };

  @override
  toString() => '${super.toString()} km/h';
}