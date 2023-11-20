import '../../time_unit.dart';
import 'century.dart';
import 'day.dart';
import 'decade.dart';
import 'micro_second.dart';
import 'milli_second.dart';
import 'minute.dart';
import 'month.dart';
import 'nano_second.dart';
import 'second.dart';
import 'time_value.dart';
import 'week.dart';
import 'year.dart';

class Hour extends TimeValue {
  Hour(double time) : super(time);

  @override
  TimeValue to(TimeUnit unit) =>
      switch(unit) {
        TimeUnit.nanoSecond => NanoSecond(value * 3.6e+12),
        TimeUnit.microSecond => MicroSecond(value * 3.6e+9),
        TimeUnit.milliSecond => MilliSecond(value * 3.6e+6),
        TimeUnit.second => Second(value * 3600),
        TimeUnit.minute => Minute(value * 60),
        TimeUnit.hour => Hour(value),
        TimeUnit.day => Day(value / 24),
        TimeUnit.week => Week(value / 168),
        TimeUnit.month => Month(value / 730),
        TimeUnit.year => Year(value / 8760),
        TimeUnit.decade => Decade(value / 87600),
        TimeUnit.century => Century(value / 876000),
      };

  @override
  toString() => '${super.toString()} h';
}