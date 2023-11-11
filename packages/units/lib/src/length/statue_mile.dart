import '../../length_unit.dart';
import 'foot.dart';
import 'inch.dart';
import 'length_value.dart';
import 'meter.dart';
import 'nautical_mile.dart';
import 'yard.dart';

class StatueMile extends LengthValue {
  StatueMile(double distance) : super(distance);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.foot => Foot(value * 5280),
        LengthUnit.inch => Inch(value * 63360),
        LengthUnit.meter => Meter(value * 1609.344),
        LengthUnit.nauticalMile => NauticalMile(value * 0.868976),
        LengthUnit.statueMile => StatueMile(value),
        LengthUnit.yard => Yard(value * 1760),
      };
}