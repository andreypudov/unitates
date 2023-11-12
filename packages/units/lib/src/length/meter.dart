import '../../length_unit.dart';
import 'centimeter.dart';
import 'foot.dart';
import 'inch.dart';
import 'kilometer.dart';
import 'length_value.dart';
import 'micrometer.dart';
import 'millimeter.dart';
import 'nanometer.dart';
import 'nautical_mile.dart';
import 'statue_mile.dart';
import 'yard.dart';

class Meter extends LengthValue {
  Meter(double length) : super(length);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.kilometer => Kilometer(value),
        LengthUnit.meter => Meter(value),
        LengthUnit.centimeter => Centimeter(value),
        LengthUnit.millimeter => Millimeter(value),
        LengthUnit.micrometer => Micrometer(value),
        LengthUnit.nanometer => Nanometer(value),
        LengthUnit.statueMile => StatueMile(value * 0.000621371),
        LengthUnit.yard => Yard(value * 1.09361),
        LengthUnit.foot => Foot(value * 3.28084),
        LengthUnit.inch => Inch(value * 39.3701),
        LengthUnit.nauticalMile => NauticalMile(value * 0.000539957),
      };
}