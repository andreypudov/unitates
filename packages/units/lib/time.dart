import 'time_unit.dart';
import 'src/time/time_value.dart';

class Time {
  TimeValue value;

  Time(double time, TimeUnit unit):
        value = TimeValue.from(unit, time);

  to(TimeUnit unit) => value.to(unit);

  @override
  toString() => value.toString();
}