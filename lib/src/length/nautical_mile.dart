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
import 'mile.dart';
import 'yard.dart';

class NauticalMile extends LengthValue {
  NauticalMile(double length) : super(length);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.kilometer => Kilometer(value * 1.852),
        LengthUnit.meter => Meter(value * 1852),
        LengthUnit.centimeter => Centimeter(value * 185200),
        LengthUnit.millimeter => Millimeter(value * 1852000),
        LengthUnit.micrometer => Micrometer(value * 1852000000),
        LengthUnit.nanometer => Nanometer(value * 1852000000000),
        LengthUnit.mile => Mile(value * 1.15078),
        LengthUnit.yard => Yard(value * 2025.37),
        LengthUnit.foot => Foot(value * 6076.12),
        LengthUnit.inch => Inch(value * 72913.4),
        LengthUnit.nauticalMile => NauticalMile(value),
      };

  @override
  toString() => '${super.toString()} nmi';
}