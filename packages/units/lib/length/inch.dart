import 'foot.dart';
import 'length_units.dart';
import 'length_value.dart';
import 'meter.dart';
import 'nautical_mile.dart';
import 'statue_mile.dart';
import 'yard.dart';

class Inch extends LengthValue {
  Inch(double distance) : super(distance);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.foot => Foot(value / 12),
        LengthUnit.inch => Inch(value),
        LengthUnit.meter => Meter(value * 0.0254),
        LengthUnit.nauticalMile => NauticalMile(value / 72913.4),
        LengthUnit.statueMile => StatueMile(value / 63360),
        LengthUnit.yard => Yard(value / 36),
      };
}