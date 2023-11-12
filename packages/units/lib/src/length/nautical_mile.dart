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
import 'statue_mile.dart';
import 'yard.dart';

class NauticalMile extends LengthValue {
  NauticalMile(double length) : super(length);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.kilometer => Kilometer(value),
        LengthUnit.meter => Meter(value * 1852),
        LengthUnit.centimeter => Centimeter(value),
        LengthUnit.millimeter => Millimeter(value),
        LengthUnit.micrometer => Micrometer(value),
        LengthUnit.nanometer => Nanometer(value),
        LengthUnit.statueMile => StatueMile(value * 1.15078),
        LengthUnit.yard => Yard(value * 2025.37),
        LengthUnit.foot => Foot(value * 6076.12),
        LengthUnit.inch => Inch(value * 72913.4),
        LengthUnit.nauticalMile => NauticalMile(value),
      };
}