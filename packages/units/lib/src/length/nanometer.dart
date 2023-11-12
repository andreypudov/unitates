import '../../length_unit.dart';
import 'centimeter.dart';
import 'foot.dart';
import 'inch.dart';
import 'kilometer.dart';
import 'length_value.dart';
import 'meter.dart';
import 'micrometer.dart';
import 'millimeter.dart';
import 'nautical_mile.dart';
import 'statue_mile.dart';
import 'yard.dart';

class Nanometer extends LengthValue {
  Nanometer(double length) : super(length);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.kilometer => Kilometer(value / 1000000000000),
        LengthUnit.meter => Meter(value / 1000000000),
        LengthUnit.centimeter => Centimeter(value / 10000000),
        LengthUnit.millimeter => Millimeter(value / 1000000),
        LengthUnit.micrometer => Micrometer(value / 1000),
        LengthUnit.nanometer => Nanometer(value),
        LengthUnit.statueMile => StatueMile(value / 1609344000000),
        LengthUnit.yard => Yard(value / 914400000),
        LengthUnit.foot => Foot(value / 304800000),
        LengthUnit.inch => Inch(value / 25400000),
        LengthUnit.nauticalMile => NauticalMile(value / 1852000000000),
      };

  @override
  toString() => '${super.toString()} nm';
}