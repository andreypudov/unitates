import '../../time_unit.dart';
import 'century.dart';
import 'day.dart';
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

class Year extends TimeValue {
  Year(double time) : super(time);

  @override
  TimeValue to(TimeUnit unit) =>
      switch(unit) {
        TimeUnit.nanosecond => Nanosecond(value * 3.154e+16),
        TimeUnit.microsecond => Microsecond(value * 3.154e+13),
        TimeUnit.millisecond => Millisecond(value * 3.154e+10),
        TimeUnit.second => Second(value * 3.154e+7),
        TimeUnit.minute => Minute(value * 525600),
        TimeUnit.hour => Hour(value * 8760),
        TimeUnit.day => Day(value * 365),
        TimeUnit.week => Week(value * 52.1429),
        TimeUnit.month => Month(value * 12),
        TimeUnit.year => Year(value),
        TimeUnit.decade => Decade(value / 10),
        TimeUnit.century => Century(value / 100),
      };

  @override
  toString() => '${super.toString()} year';
}