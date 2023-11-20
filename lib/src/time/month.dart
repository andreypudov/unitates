import '../../time_unit.dart';
import 'century.dart';
import 'day.dart';
import 'decade.dart';
import 'hour.dart';
import 'micro_second.dart';
import 'milli_second.dart';
import 'minute.dart';
import 'nano_second.dart';
import 'second.dart';
import 'time_value.dart';
import 'week.dart';
import 'year.dart';

class Month extends TimeValue {
  Month(double time) : super(time);

  @override
  TimeValue to(TimeUnit unit) =>
      switch(unit) {
        TimeUnit.nanoSecond => NanoSecond(value * 2.628e+15),
        TimeUnit.microSecond => MicroSecond(value * 2.628e+12),
        TimeUnit.milliSecond => MilliSecond(value * 2.628e+9),
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