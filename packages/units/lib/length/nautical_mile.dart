import 'foot.dart';
import 'inch.dart';
import 'length_units.dart';
import 'length_value.dart';
import 'meter.dart';
import 'statue_mile.dart';
import 'yard.dart';

class NauticalMile extends LengthValue {
  NauticalMile(double distance) : super(distance);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.foot => Foot(value * 6076.12),
        LengthUnit.inch => Inch(value * 72913.4),
        LengthUnit.meter => Meter(value * 1852),
        LengthUnit.nauticalMile => NauticalMile(value),
        LengthUnit.statueMile => StatueMile(value * 1.15078),
        LengthUnit.yard => Yard(value * 2025.37),
      };
}