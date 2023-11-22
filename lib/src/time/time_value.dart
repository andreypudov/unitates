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
import 'week.dart';
import 'year.dart';

abstract class TimeValue {
  final double value;

  TimeValue(this.value);

  factory TimeValue.from(TimeUnit unit, double value) {
    return switch (unit) {
      TimeUnit.nanosecond => Nanosecond(value),
      TimeUnit.microsecond => Microsecond(value),
      TimeUnit.millisecond => Millisecond(value),
      TimeUnit.second => Second(value),
      TimeUnit.minute => Minute(value),
      TimeUnit.hour => Hour(value),
      TimeUnit.day => Day(value),
      TimeUnit.week => Week(value),
      TimeUnit.month => Month(value),
      TimeUnit.year => Year(value),
      TimeUnit.decade => Decade(value),
      TimeUnit.century => Century(value),
    };
  }

  TimeValue to(TimeUnit unit);

  @override
  toString() => value.toString();
}