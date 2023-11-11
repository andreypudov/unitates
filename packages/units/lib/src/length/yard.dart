import '../../length_units.dart';
import 'foot.dart';
import 'inch.dart';
import 'length_value.dart';
import 'meter.dart';
import 'nautical_mile.dart';
import 'statue_mile.dart';

class Yard extends LengthValue {
  Yard(double distance) : super(distance);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.foot => Foot(value * 3),
        LengthUnit.inch => Inch(value * 36),
        LengthUnit.meter => Meter(value * 0.9144),
        LengthUnit.nauticalMile => NauticalMile(value / 2025.37),
        LengthUnit.statueMile => StatueMile(value / 1760),
        LengthUnit.yard => Yard(value),
      };
}