import '../../length_unit.dart';
import 'foot.dart';
import 'inch.dart';
import 'meter.dart';
import 'nautical_mile.dart';
import 'statue_mile.dart';
import 'yard.dart';

abstract class LengthValue {
  final double value;

  LengthValue(this.value);

  factory LengthValue.from(LengthUnit unit, double value) {
    return switch (unit) {
      LengthUnit.foot => Foot(value),
      LengthUnit.inch => Inch(value),
      LengthUnit.meter => Meter(value),
      LengthUnit.nauticalMile => NauticalMile(value),
      LengthUnit.statueMile => StatueMile(value),
      LengthUnit.yard => Yard(value),
    };
  }

  LengthValue to(LengthUnit unit);
}