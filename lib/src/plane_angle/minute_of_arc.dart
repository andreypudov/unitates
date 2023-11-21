import '../../plane_angle_unit.dart';
import 'arcsecond.dart';
import 'degree.dart';
import 'gradian.dart';
import 'milliradian.dart';
import 'plane_angle_conversion_factor.dart';
import 'plane_angle_value.dart';
import 'radian.dart';

class MinuteOfArc extends PlaneAngleValue {
  MinuteOfArc(double planeAngle) : super(planeAngle);

  @override
  PlaneAngleValue to(PlaneAngleUnit unit) =>
      switch(unit) {
        PlaneAngleUnit.arcsecond => Arcsecond(value * 60),
        PlaneAngleUnit.degree => Degree(value / 60),
        PlaneAngleUnit.gradian => Gradian(value / 54),
        PlaneAngleUnit.milliradian => Milliradian(value * 1000 * PlaneAngleConversionFactor.minuteOfArcToRadian),
        PlaneAngleUnit.minuteOfArc => MinuteOfArc(value),
        PlaneAngleUnit.radian => Radian(value * PlaneAngleConversionFactor.minuteOfArcToRadian),
      };

  @override
  toString() => '${super.toString()} ′';
}