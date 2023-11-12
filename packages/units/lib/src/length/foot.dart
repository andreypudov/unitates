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
        LengthUnit.kilometer => Kilometer(value / 3280.84),
        LengthUnit.meter => Meter(value * 0.3048),
        LengthUnit.centimeter => Centimeter(value * 30.48),
        LengthUnit.millimeter => Millimeter(value * 304.8),
        LengthUnit.micrometer => Micrometer(value * 304800),
        LengthUnit.nanometer => Nanometer(value * 304800000),
        LengthUnit.statueMile => StatueMile(value / 5280),
        LengthUnit.yard => Yard(value / 3),
        LengthUnit.foot => Foot(value),
        LengthUnit.inch => Inch(value * 12),
        LengthUnit.nauticalMile => NauticalMile(value / 6076.12),
      };

  @override
  toString() => '${super.toString()} ft';
}