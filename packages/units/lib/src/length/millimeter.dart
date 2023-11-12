import '../../length_unit.dart';
import 'centimeter.dart';
import 'foot.dart';
import 'inch.dart';
import 'kilometer.dart';
import 'length_value.dart';
import 'meter.dart';
import 'micrometer.dart';
import 'nanometer.dart';
import 'nautical_mile.dart';
import 'statue_mile.dart';
import 'yard.dart';

class Millimeter extends LengthValue {
  Millimeter(double length) : super(length);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.kilometer => Kilometer(value / 1000000),
        LengthUnit.meter => Meter(value / 1000),
        LengthUnit.centimeter => Centimeter(value / 10),
        LengthUnit.millimeter => Millimeter(value),
        LengthUnit.micrometer => Micrometer(value * 1000),
        LengthUnit.nanometer => Nanometer(value * 1000000),
        LengthUnit.statueMile => StatueMile(value / 1609344),
        LengthUnit.yard => Yard(value / 914.4),
        LengthUnit.foot => Foot(value / 304.8),
        LengthUnit.inch => Inch(value / 25.4),
        LengthUnit.nauticalMile => NauticalMile(value / 1852000),
      };

  @override
  toString() => '${super.toString()} mm';
}