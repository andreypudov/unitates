import '../../length_unit.dart';
import 'foot.dart';
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

class Centimeter extends LengthValue {
  Centimeter(double length) : super(length);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.kilometer => Kilometer(value / 100000),
        LengthUnit.meter => Meter(value / 100),
        LengthUnit.centimeter => Centimeter(value),
        LengthUnit.millimeter => Millimeter(value * 10),
        LengthUnit.micrometer => Micrometer(value * 10000),
        LengthUnit.nanometer => Nanometer(value * 10000000),
        LengthUnit.statueMile => StatueMile(value / 160934.4),
        LengthUnit.yard => Yard(value / 91.44),
        LengthUnit.foot => Foot(value / 30.48),
        LengthUnit.inch => Inch(value / 2.54),
        LengthUnit.nauticalMile => NauticalMile(value / 185200),
      };

  @override
  toString() => '${super.toString()} cm';
}