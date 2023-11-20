import '../../time_unit.dart';
import 'century.dart';
import 'day.dart';
import 'decade.dart';
import 'hour.dart';
import 'milli_second.dart';
import 'minute.dart';
import 'month.dart';
import 'nano_second.dart';
import 'second.dart';
import 'time_value.dart';
import 'week.dart';
import 'year.dart';

class MicroSecond extends TimeValue {
  MicroSecond(double time) : super(time);

  @override
  TimeValue to(TimeUnit unit) =>
      switch(unit) {
        TimeUnit.nanoSecond => NanoSecond(value * 1e+3),
        TimeUnit.microSecond => MicroSecond(value),
        TimeUnit.milliSecond => MilliSecond(value / 1e+3),
        TimeUnit.second => Second(value / 1e+6),
        TimeUnit.minute => Minute(value / 6e+7),
        TimeUnit.hour => Hour(value / 3.6e+9),
        TimeUnit.day => Day(value / 8.64e+10),
        TimeUnit.week => Week(value / 6.048e+11),
        TimeUnit.month => Month(value / 2.628e+12),
        TimeUnit.year => Year(value / 3.154e+13),
        TimeUnit.decade => Decade(value / 3.154e+14),
        TimeUnit.century => Century(value / 3.154e+15),
      };

  @override
  toString() => '${super.toString()} μs';
}