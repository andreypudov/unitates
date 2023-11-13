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

class Mile extends LengthValue {
  Mile(double length) : super(length);

  @override
  LengthValue to(LengthUnit unit) =>
      switch(unit) {
        LengthUnit.kilometer => Kilometer(value * 1.609344),
        LengthUnit.meter => Meter(value * 1609.344),
        LengthUnit.centimeter => Centimeter(value * 160934.4),
        LengthUnit.millimeter => Millimeter(value * 1609344),
        LengthUnit.micrometer => Micrometer(value * 1609344000),
        LengthUnit.nanometer => Nanometer(value * 1609344000000),
        LengthUnit.mile => Mile(value),
        LengthUnit.yard => Yard(value * 1760),
        LengthUnit.foot => Foot(value * 5280),
        LengthUnit.inch => Inch(value * 63360),
        LengthUnit.nauticalMile => NauticalMile(value * 0.868976),
      };

  @override
  toString() => '${super.toString()} mi';
}