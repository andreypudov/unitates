import '../../length_unit.dart';
import 'centimeter.dart';
import 'inch.dart';
import 'kilometer.dart';
import 'length_value.dart';
import 'meter.dart';
import 'micrometer.dart';
import 'millimeter.dart';
import 'nanometer.dart';
import 'nautical_mile.dart';
import 'statue_mile.dart';
import 'yard.dart';

class Foot extends LengthValue {
  Foot(double length) : super(length);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.kilometer => Kilometer(value),
        LengthUnit.meter => Meter(value * 0.3048),
        LengthUnit.centimeter => Centimeter(value),
        LengthUnit.millimeter => Millimeter(value),
        LengthUnit.micrometer => Micrometer(value),
        LengthUnit.nanometer => Nanometer(value),
        LengthUnit.statueMile => StatueMile(value / 5280),
        LengthUnit.yard => Yard(value / 3),
        LengthUnit.foot => Foot(value),
        LengthUnit.inch => Inch(value * 12),
        LengthUnit.nauticalMile => NauticalMile(value / 6076.12),
      };
}