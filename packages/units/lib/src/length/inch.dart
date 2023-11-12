import '../../length_unit.dart';
import 'centimeter.dart';
import 'foot.dart';
import 'kilometer.dart';
import 'length_value.dart';
import 'meter.dart';
import 'micrometer.dart';
import 'millimeter.dart';
import 'nanometer.dart';
import 'nautical_mile.dart';
import 'statue_mile.dart';
import 'yard.dart';

class Inch extends LengthValue {
  Inch(double length) : super(length);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.kilometer => Kilometer(value / 39370.1),
        LengthUnit.meter => Meter(value * 0.0254),
        LengthUnit.centimeter => Centimeter(value * 2.54),
        LengthUnit.millimeter => Millimeter(value * 25.4),
        LengthUnit.micrometer => Micrometer(value * 25400),
        LengthUnit.nanometer => Nanometer(value * 25400000),
        LengthUnit.statueMile => StatueMile(value / 63360),
        LengthUnit.yard => Yard(value / 36),
        LengthUnit.foot => Foot(value / 12),
        LengthUnit.inch => Inch(value),
        LengthUnit.nauticalMile => NauticalMile(value / 72913.4),
      };

  @override
  toString() => '${super.toString()} in';
}