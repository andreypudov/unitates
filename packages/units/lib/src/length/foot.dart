import '../../length_units.dart';
import 'inch.dart';
import 'length_value.dart';
import 'meter.dart';
import 'nautical_mile.dart';
import 'statue_mile.dart';
import 'yard.dart';

class Foot extends LengthValue {
  Foot(double distance) : super(distance);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.foot => Foot(value),
        LengthUnit.inch => Inch(value * 12),
        LengthUnit.meter => Meter(value * 0.3048),
        LengthUnit.nauticalMile => NauticalMile(value / 6076.12),
        LengthUnit.statueMile => StatueMile(value / 5280),
        LengthUnit.yard => Yard(value / 3),
      };
}