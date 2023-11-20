import '../../time_unit.dart';
import 'century.dart';
import 'day.dart';
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

class Decade extends TimeValue {
  Decade(double time) : super(time);

  @override
  TimeValue to(TimeUnit unit) =>
      switch(unit) {
        TimeUnit.nanoSecond => NanoSecond(value * 3.154e+17),
        TimeUnit.microSecond => MicroSecond(value * 3.154e+14),
        TimeUnit.milliSecond => MilliSecond(value * 3.154e+11),
        TimeUnit.second => Second(value * 3.154e+8),
        TimeUnit.minute => Minute(value * 5256000),
        TimeUnit.hour => Hour(value * 87600),
        TimeUnit.day => Day(value * 3650),
        TimeUnit.week => Week(value * 521.429),
        TimeUnit.month => Month(value * 120),
        TimeUnit.year => Year(value * 10),
        TimeUnit.decade => Decade(value),
        TimeUnit.century => Century(value / 10),
      };

  @override
  toString() => '${super.toString()} decade';
}