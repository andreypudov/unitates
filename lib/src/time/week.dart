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
import 'second.dart';
import 'time_value.dart';
import 'year.dart';

class Week extends TimeValue {
  Week(double time) : super(time);

  @override
  TimeValue to(TimeUnit unit) =>
      switch(unit) {
        TimeUnit.nanoSecond => NanoSecond(value * 6.048e+14),
        TimeUnit.microSecond => MicroSecond(value * 6.048e+11),
        TimeUnit.milliSecond => MilliSecond(value * 6.048e+8),
        TimeUnit.second => Second(value * 604800),
        TimeUnit.minute => Minute(value * 10080),
        TimeUnit.hour => Hour(value * 168),
        TimeUnit.day => Day(value * 7),
        TimeUnit.week => Week(value),
        TimeUnit.month => Month(value / 4.3452380952),
        TimeUnit.year => Year(value / 52.143),
        TimeUnit.decade => Decade(value / 521.429),
        TimeUnit.century => Century(value / 5214.286),
      };

  @override
  toString() => '${super.toString()} week';
}