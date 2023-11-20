import '../../time_unit.dart';
import 'century.dart';
import 'day.dart';
import 'decade.dart';
import 'hour.dart';
import 'micro_second.dart';
import 'milli_second.dart';
import 'minute.dart';
import 'month.dart';
import 'second.dart';
import 'time_value.dart';
import 'week.dart';
import 'year.dart';

class NanoSecond extends TimeValue {
  NanoSecond(double time) : super(time);

  @override
  TimeValue to(TimeUnit unit) =>
      switch(unit) {
        TimeUnit.nanoSecond => NanoSecond(value),
        TimeUnit.microSecond => MicroSecond(value / 1e+3),
        TimeUnit.milliSecond => MilliSecond(value / 1e+6),
        TimeUnit.second => Second(value / 1e+9),
        TimeUnit.minute => Minute(value / 6e+10),
        TimeUnit.hour => Hour(value / 3.6e+12),
        TimeUnit.day => Day(value / 8.64e+13),
        TimeUnit.week => Week(value / 6.048e+14),
        TimeUnit.month => Month(value / 2.628e+15),
        TimeUnit.year => Year(value / 3.154e+16),
        TimeUnit.decade => Decade(value / 3.154e+17),
        TimeUnit.century => Century(value / 3.154e+18),
      };

  @override
  toString() => '${super.toString()} ns';
}