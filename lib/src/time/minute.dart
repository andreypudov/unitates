import '../../time_unit.dart';
import 'century.dart';
import 'day.dart';
import 'decade.dart';
import 'hour.dart';
import 'micro_second.dart';
import 'milli_second.dart';
import 'month.dart';
import 'nano_second.dart';
import 'second.dart';
import 'time_value.dart';
import 'week.dart';
import 'year.dart';

class Minute extends TimeValue {
  Minute(double time) : super(time);

  @override
  TimeValue to(TimeUnit unit) =>
      switch(unit) {
        TimeUnit.nanoSecond => NanoSecond(value * 6e+10),
        TimeUnit.microSecond => MicroSecond(value * 6e+7),
        TimeUnit.milliSecond => MilliSecond(value * 6e+4),
        TimeUnit.second => Second(value * 60),
        TimeUnit.minute => Minute(value),
        TimeUnit.hour => Hour(value / 60),
        TimeUnit.day => Day(value / 1440),
        TimeUnit.week => Week(value / 10080),
        TimeUnit.month => Month(value / 43800),
        TimeUnit.year => Year(value / 525600),
        TimeUnit.decade => Decade(value / 5.256e+6),
        TimeUnit.century => Century(value / 5.256e+7),
      };

  @override
  toString() => '${super.toString()} min';
}