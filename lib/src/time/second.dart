import '../../time_unit.dart';
import 'century.dart';
import 'day.dart';
import 'decade.dart';
import 'hour.dart';
import 'micro_second.dart';
import 'milli_second.dart';
import 'minute.dart';
import 'month.dart';
import 'nano_second.dart';
import 'time_value.dart';
import 'week.dart';
import 'year.dart';

class Second extends TimeValue {
  Second(double time) : super(time);

  @override
  TimeValue to(TimeUnit unit) =>
      switch(unit) {
        TimeUnit.nanoSecond => NanoSecond(value * 1e+9),
        TimeUnit.microSecond => MicroSecond(value * 1e+6),
        TimeUnit.milliSecond => MilliSecond(value * 1e+3),
        TimeUnit.second => Second(value),
        TimeUnit.minute => Minute(value / 60),
        TimeUnit.hour => Hour(value / 3600),
        TimeUnit.day => Day(value / 86400),
        TimeUnit.week => Week(value / 604800),
        TimeUnit.month => Month(value / 2.628e+6),
        TimeUnit.year => Year(value / 3.154e+7),
        TimeUnit.decade => Decade(value / 3.154e+8),
        TimeUnit.century => Century(value / 3.154e+9),
      };

  @override
  toString() => '${super.toString()} s';
}