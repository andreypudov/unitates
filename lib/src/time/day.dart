import '../../time_unit.dart';
import 'century.dart';
import 'decade.dart';
import 'hour.dart';
import 'microsecond.dart';
import 'millisecond.dart';
import 'minute.dart';
import 'month.dart';
import 'nanosecond.dart';
import 'second.dart';
import 'time_value.dart';
import 'week.dart';
import 'year.dart';

class Day extends TimeValue {
  Day(double time) : super(time);

  @override
  TimeValue to(TimeUnit unit) =>
      switch(unit) {
        TimeUnit.nanosecond => Nanosecond(value * 8.64e+13),
        TimeUnit.microsecond => Microsecond(value * 8.64e+10),
        TimeUnit.millisecond => Millisecond(value * 8.64e+7),
        TimeUnit.second => Second(value * 86400),
        TimeUnit.minute => Minute(value * 1440),
        TimeUnit.hour => Hour(value * 24),
        TimeUnit.day => Day(value),
        TimeUnit.week => Week(value / 7),
        TimeUnit.month => Month(value / 30.4166666667),
        TimeUnit.year => Year(value / 365),
        TimeUnit.decade => Decade(value / 3650),
        TimeUnit.century => Century(value / 36500),
      };

  @override
  toString() => '${super.toString()} d';
}