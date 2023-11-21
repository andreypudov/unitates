import '../../plane_angle_unit.dart';
import 'arcsecond.dart';
import 'degree.dart';
import 'milliradian.dart';
import 'minute_of_arc.dart';
import 'plane_angle_conversion_factor.dart';
import 'plane_angle_value.dart';
import 'radian.dart';

class Gradian extends PlaneAngleValue {
  Gradian(double planeAngle) : super(planeAngle);

  @override
  PlaneAngleValue to(PlaneAngleUnit unit) =>
      switch(unit) {
        PlaneAngleUnit.arcsecond => Arcsecond(value * 3240),
        PlaneAngleUnit.degree => Degree(value * PlaneAngleConversionFactor.gradianToDegree),
        PlaneAngleUnit.gradian => Gradian(value),
        PlaneAngleUnit.milliradian => Milliradian(value * 1000 * PlaneAngleConversionFactor.gradianToRadian),
        PlaneAngleUnit.minuteOfArc => MinuteOfArc(value * 54),
        PlaneAngleUnit.radian => Radian(value * PlaneAngleConversionFactor.gradianToRadian),
      };

  @override
  toString() => '${super.toString()} gon';
}