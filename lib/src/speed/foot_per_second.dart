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
        SpeedUnit.milePerHour => MilePerHour(value * 0.6818181818),
        SpeedUnit.footPerSecond => FootPerSecond(value),
        SpeedUnit.meterPerSecond => MeterPerSecond(value * 0.3048),
        SpeedUnit.kilometerPerHour => KilometerPerHour(value * 1.09728),
        SpeedUnit.knot => Knot(value * 0.5924838013),
      };

  @override
  toString() => '${super.toString()} ft/s';
}