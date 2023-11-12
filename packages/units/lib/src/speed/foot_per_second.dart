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
        SpeedUnit.milePerHour => MilePerHour(value),
        SpeedUnit.footPerSecond => FootPerSecond(value),
        SpeedUnit.meterPerSecond => MeterPerSecond(value),
        SpeedUnit.kilometerPerHour => KilometerPerHour(value),
        SpeedUnit.knot => Knot(value),
      };
}