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
import 'mile.dart';
import 'yard.dart';

class Meter extends LengthValue {
  Meter(double length) : super(length);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.kilometer => Kilometer(value / 1000),
        LengthUnit.meter => Meter(value),
        LengthUnit.centimeter => Centimeter(value * 100),
        LengthUnit.millimeter => Millimeter(value * 1000),
        LengthUnit.micrometer => Micrometer(value * 1000000),
        LengthUnit.nanometer => Nanometer(value * 1000000000),
        LengthUnit.mile => Mile(value * 0.000621371),
        LengthUnit.yard => Yard(value * 1.09361),
        LengthUnit.foot => Foot(value * 3.28084),
        LengthUnit.inch => Inch(value * 39.3701),
        LengthUnit.nauticalMile => NauticalMile(value * 0.000539957),
      };

  @override
  toString() => '${super.toString()} m';
}