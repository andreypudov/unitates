import 'foot.dart';
import 'inch.dart';
import 'length_units.dart';
import 'meter.dart';
import 'nautical_mile.dart';
import 'statue_mile.dart';
import 'yard.dart';

abstract class LengthValue {
  final double value;

  LengthValue(this.value);

  factory LengthValue.from(LengthUnit unit, double value) {
    if (value < 0) {
      throw ArgumentError('Distance cannot be negative');
    }

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