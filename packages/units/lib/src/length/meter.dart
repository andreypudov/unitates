import '../../length_unit.dart';
import 'foot.dart';
import 'inch.dart';
import 'length_value.dart';
import 'nautical_mile.dart';
import 'statue_mile.dart';
import 'yard.dart';

class Meter extends LengthValue {
  Meter(double distance) : super(distance);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.foot => Foot(value * 3.28084),
        LengthUnit.inch => Inch(value * 39.3701),
        LengthUnit.meter => Meter(value),
        LengthUnit.nauticalMile => NauticalMile(value * 0.000539957),
        LengthUnit.statueMile => StatueMile(value * 0.000621371),
        LengthUnit.yard => Yard(value * 1.09361),
      };
}