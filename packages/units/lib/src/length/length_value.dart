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
      LengthUnit.kilometer => Kilometer(value),
      LengthUnit.meter => Meter(value),
      LengthUnit.centimeter => Centimeter(value),
      LengthUnit.millimeter => Millimeter(value),
      LengthUnit.micrometer => Micrometer(value),
      LengthUnit.nanometer => Nanometer(value),
      LengthUnit.statueMile => StatueMile(value),
      LengthUnit.yard => Yard(value),
      LengthUnit.foot => Foot(value),
      LengthUnit.inch => Inch(value),
      LengthUnit.nauticalMile => NauticalMile(value),
    };
  }

  LengthValue to(LengthUnit unit);
}