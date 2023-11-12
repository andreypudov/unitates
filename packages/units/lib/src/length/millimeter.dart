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
        LengthUnit.kilometer => Kilometer(value),
        LengthUnit.meter => Meter(value),
        LengthUnit.centimeter => Centimeter(value),
        LengthUnit.millimeter => Millimeter(value),
        LengthUnit.micrometer => Micrometer(value),
        LengthUnit.nanometer => Nanometer(value),
        LengthUnit.statueMile => StatueMile(value),
        LengthUnit.yard => Yard(value),
        LengthUnit.foot => Foot(value),
        LengthUnit.inch => Inch(value),
        LengthUnit.nauticalMile => NauticalMile(value),
      };
}