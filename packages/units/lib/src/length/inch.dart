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
        LengthUnit.kilometer => Kilometer(value),
        LengthUnit.meter => Meter(value * 0.0254),
        LengthUnit.centimeter => Centimeter(value),
        LengthUnit.millimeter => Millimeter(value),
        LengthUnit.micrometer => Micrometer(value),
        LengthUnit.nanometer => Nanometer(value),
        LengthUnit.statueMile => StatueMile(value / 63360),
        LengthUnit.yard => Yard(value / 36),
        LengthUnit.foot => Foot(value / 12),
        LengthUnit.inch => Inch(value),
        LengthUnit.nauticalMile => NauticalMile(value / 72913.4),
      };
}