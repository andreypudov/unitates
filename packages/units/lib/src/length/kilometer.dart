import '../../length_unit.dart';
import 'centimeter.dart';
import 'foot.dart';
import 'inch.dart';
import 'length_value.dart';
import 'meter.dart';
import 'micrometer.dart';
import 'millimeter.dart';
import 'nanometer.dart';
import 'nautical_mile.dart';
import 'statue_mile.dart';
import 'yard.dart';

class Kilometer extends LengthValue {
  Kilometer(double length) : super(length);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.kilometer => Kilometer(value),
        LengthUnit.meter => Meter(value * 1000),
        LengthUnit.centimeter => Centimeter(value * 100000),
        LengthUnit.millimeter => Millimeter(value * 1000000),
        LengthUnit.micrometer => Micrometer(value * 1000000000),
        LengthUnit.nanometer => Nanometer(value * 1000000000000),
        LengthUnit.statueMile => StatueMile(value / 1.609344),
        LengthUnit.yard => Yard(value / 0.0009144),
        LengthUnit.foot => Foot(value * 3280.84),
        LengthUnit.inch => Inch(value * 39370.1),
        LengthUnit.nauticalMile => NauticalMile(value / 1.852),
      };

  @override
  toString() => '${super.toString()} km';
}