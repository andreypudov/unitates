import '../../time_unit.dart';
import 'century.dart';
import 'decade.dart';
import 'hour.dart';
import 'micro_second.dart';
import 'milli_second.dart';
import 'minute.dart';
import 'month.dart';
import 'nano_second.dart';
import 'second.dart';
import 'time_value.dart';
import 'week.dart';
import 'year.dart';

class Day extends TimeValue {
  Day(double time) : super(time);

  @override
  TimeValue to(TimeUnit unit) =>
      switch(unit) {
        TimeUnit.nanoSecond => NanoSecond(value * 8.64e+13),
        TimeUnit.microSecond => MicroSecond(value * 8.64e+10),
        TimeUnit.milliSecond => MilliSecond(value * 8.64e+7),
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