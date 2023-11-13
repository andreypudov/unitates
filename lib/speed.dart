import 'speed_unit.dart';
import 'src/speed/speed_value.dart';

class Speed {
  SpeedValue value;

  Speed(double speed, SpeedUnit unit):
        value = SpeedValue.from(unit, speed);

  to(SpeedUnit unit) => value.to(unit);

  @override
  toString() => value.toString();
}