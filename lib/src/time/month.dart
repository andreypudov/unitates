import '../../time_unit.dart';
import 'century.dart';
import 'day.dart';
import 'decade.dart';
import 'hour.dart';
import 'microsecond.dart';
import 'millisecond.dart';
import 'minute.dart';
import 'nanosecond.dart';
import 'second.dart';
import 'time_value.dart';
import 'week.dart';
import 'year.dart';

class Month extends TimeValue {
  Month(double time) : super(time);

  @override
  TimeValue to(TimeUnit unit) =>
      switch(unit) {
        TimeUnit.nanosecond => Nanosecond(value * 2.628e+15),
        TimeUnit.microsecond => Microsecond(value * 2.628e+12),
        TimeUnit.millisecond => Millisecond(value * 2.628e+9),
        TimeUnit.second => Second(value * 2.628e+6),
        TimeUnit.minute => Minute(value * 43800),
        TimeUnit.hour => Hour(value * 730),
        TimeUnit.day => Day(value * 30.4166666667),
        TimeUnit.week => Week(value * 4.3452380952),
        TimeUnit.month => Month(value),
        TimeUnit.year => Year(value / 12),
        TimeUnit.decade => Decade(value / 120),
        TimeUnit.century => Century(value / 1200),
      };

  @override
  toString() => '${super.toString()} month';
}