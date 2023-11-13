import '../../length_unit.dart';
import 'centimeter.dart';
import 'foot.dart';
import 'inch.dart';
import 'kilometer.dart';
import 'length_value.dart';
import 'meter.dart';
import 'micrometer.dart';
import 'millimeter.dart';
import 'nanometer.dart';
import 'nautical_mile.dart';
import 'mile.dart';

class Yard extends LengthValue {
  Yard(double length) : super(length);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.kilometer => Kilometer(value * 0.0009144),
        LengthUnit.meter => Meter(value * 0.9144),
        LengthUnit.centimeter => Centimeter(value * 91.44),
        LengthUnit.millimeter => Millimeter(value * 914.4),
        LengthUnit.micrometer => Micrometer(value * 914400),
        LengthUnit.nanometer => Nanometer(value * 914400000),
        LengthUnit.mile => Mile(value / 1760),
        LengthUnit.yard => Yard(value),
        LengthUnit.foot => Foot(value * 3),
        LengthUnit.inch => Inch(value * 36),
        LengthUnit.nauticalMile => NauticalMile(value / 2025.37),
      };

  @override
  toString() => '${super.toString()} yd';
}