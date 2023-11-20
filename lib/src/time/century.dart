import '../../time_unit.dart';
import 'day.dart';
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

class Century extends TimeValue {
  Century(double time) : super(time);

  @override
  TimeValue to(TimeUnit unit) =>
      switch(unit) {
        TimeUnit.nanoSecond => NanoSecond(value * 3.154e+18),
        TimeUnit.microSecond => MicroSecond(value * 3.154e+15),
        TimeUnit.milliSecond => MilliSecond(value * 3.154e+12),
        TimeUnit.second => Second(value * 3.154e+9),
        TimeUnit.minute => Minute(value * 5.256e+7),
        TimeUnit.hour => Hour(value * 876000),
        TimeUnit.day => Day(value * 36500),
        TimeUnit.week => Week(value * 5214.286),
        TimeUnit.month => Month(value * 1200),
        TimeUnit.year => Year(value * 100),
        TimeUnit.decade => Decade(value * 10),
        TimeUnit.century => Century(value),
      };

  @override
  toString() => '${super.toString()} century';
}