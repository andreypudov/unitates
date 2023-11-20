import '../../time_unit.dart';
import 'century.dart';
import 'day.dart';
import 'decade.dart';
import 'hour.dart';
import 'micro_second.dart';
import 'minute.dart';
import 'month.dart';
import 'nano_second.dart';
import 'second.dart';
import 'time_value.dart';
import 'week.dart';
import 'year.dart';

class MilliSecond extends TimeValue {
  MilliSecond(double time) : super(time);

  @override
  TimeValue to(TimeUnit unit) =>
      switch(unit) {
        TimeUnit.nanoSecond => NanoSecond(value * 1e+6),
        TimeUnit.microSecond => MicroSecond(value * 1e+3),
        TimeUnit.milliSecond => MilliSecond(value),
        TimeUnit.second => Second(value / 1e+3),
        TimeUnit.minute => Minute(value / 6e+4),
        TimeUnit.hour => Hour(value / 3.6e+6),
        TimeUnit.day => Day(value / 8.64e+7),
        TimeUnit.week => Week(value / 6.048e+8),
        TimeUnit.month => Month(value / 2.628e+9),
        TimeUnit.year => Year(value / 3.154e+10),
        TimeUnit.decade => Decade(value / 3.154e+11),
        TimeUnit.century => Century(value / 3.154e+12),
      };

  @override
  toString() => '${super.toString()} ms';
}