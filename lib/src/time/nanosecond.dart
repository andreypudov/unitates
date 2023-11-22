import '../../time_unit.dart';
import 'century.dart';
import 'day.dart';
import 'decade.dart';
import 'hour.dart';
import 'microsecond.dart';
import 'millisecond.dart';
import 'minute.dart';
import 'month.dart';
import 'second.dart';
import 'time_value.dart';
import 'week.dart';
import 'year.dart';

class Nanosecond extends TimeValue {
  Nanosecond(double time) : super(time);

  @override
  TimeValue to(TimeUnit unit) =>
      switch(unit) {
        TimeUnit.nanosecond => Nanosecond(value),
        TimeUnit.microsecond => Microsecond(value / 1e+3),
        TimeUnit.millisecond => Millisecond(value / 1e+6),
        TimeUnit.second => Second(value / 1e+9),
        TimeUnit.minute => Minute(value / 6e+10),
        TimeUnit.hour => Hour(value / 3.6e+12),
        TimeUnit.day => Day(value / 8.64e+13),
        TimeUnit.week => Week(value / 6.048e+14),
        TimeUnit.month => Month(value / 2.628e+15),
        TimeUnit.year => Year(value / 3.154e+16),
        TimeUnit.decade => Decade(value / 3.154e+17),
        TimeUnit.century => Century(value / 3.154e+18),
      };

  @override
  toString() => '${super.toString()} ns';
}