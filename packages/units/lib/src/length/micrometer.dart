import '../../length_unit.dart';
import 'centimeter.dart';
import 'foot.dart';
import 'inch.dart';
import 'kilometer.dart';
import 'length_value.dart';
import 'meter.dart';
import 'millimeter.dart';
import 'nanometer.dart';
import 'nautical_mile.dart';
import 'statue_mile.dart';
import 'yard.dart';

class Micrometer extends LengthValue {
  Micrometer(double length) : super(length);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.kilometer => Kilometer(value / 1000000000),
        LengthUnit.meter => Meter(value / 1000000),
        LengthUnit.centimeter => Centimeter(value / 10000),
        LengthUnit.millimeter => Millimeter(value / 1000),
        LengthUnit.micrometer => Micrometer(value),
        LengthUnit.nanometer => Nanometer(value * 1000),
        LengthUnit.statueMile => StatueMile(value / 1609344000),
        LengthUnit.yard => Yard(value / 914400),
        LengthUnit.foot => Foot(value / 304800),
        LengthUnit.inch => Inch(value / 25400),
        LengthUnit.nauticalMile => NauticalMile(value / 1852000000),
      };

  @override
  toString() => '${super.toString()} µm';
}