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
import 'nautical_mile.dart';
import 'yard.dart';

class StatueMile extends LengthValue {
  StatueMile(double length) : super(length);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.kilometer => Kilometer(value),
        LengthUnit.meter => Meter(value * 1609.344),
        LengthUnit.centimeter => Centimeter(value),
        LengthUnit.millimeter => Millimeter(value),
        LengthUnit.micrometer => Micrometer(value),
        LengthUnit.nanometer => Nanometer(value),
        LengthUnit.statueMile => StatueMile(value),
        LengthUnit.yard => Yard(value * 1760),
        LengthUnit.foot => Foot(value * 5280),
        LengthUnit.inch => Inch(value * 63360),
        LengthUnit.nauticalMile => NauticalMile(value * 0.868976),
      };
}