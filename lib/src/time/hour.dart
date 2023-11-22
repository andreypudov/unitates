import '../../time_unit.dart';
import 'century.dart';
import 'day.dart';
import 'decade.dart';
import 'microsecond.dart';
import 'millisecond.dart';
import 'minute.dart';
import 'month.dart';
import 'nanosecond.dart';
import 'second.dart';
import 'time_value.dart';
import 'week.dart';
import 'year.dart';

class Hour extends TimeValue {
  Hour(double time) : super(time);

  @override
  TimeValue to(TimeUnit unit) =>
      switch(unit) {
        TimeUnit.nanosecond => Nanosecond(value * 3.6e+12),
        TimeUnit.microsecond => Microsecond(value * 3.6e+9),
        TimeUnit.millisecond => Millisecond(value * 3.6e+6),
        TimeUnit.second => Second(value * 3600),
        TimeUnit.minute => Minute(value * 60),
        TimeUnit.hour => Hour(value),
        TimeUnit.day => Day(value / 24),
        TimeUnit.week => Week(value / 168),
        TimeUnit.month => Month(value / 730),
        TimeUnit.year => Year(value / 8760),
        TimeUnit.decade => Decade(value / 87600),
        TimeUnit.century => Century(value / 876000),
      };

  @override
  toString() => '${super.toString()} h';
}