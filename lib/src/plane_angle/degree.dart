import '../../plane_angle_unit.dart';
import 'arcsecond.dart';
import 'gradian.dart';
import 'milliradian.dart';
import 'minute_of_arc.dart';
import 'plane_angle_conversion_factor.dart';
import 'plane_angle_value.dart';
import 'radian.dart';

class Degree extends PlaneAngleValue {
  Degree(double planeAngle) : super(planeAngle);

  @override
  PlaneAngleValue to(PlaneAngleUnit unit) =>
      switch(unit) {
        PlaneAngleUnit.arcsecond => Arcsecond(value * 3600),
        PlaneAngleUnit.degree => Degree(value),
        PlaneAngleUnit.gradian => Gradian(value * PlaneAngleConversionFactor.degreeToGradian),
        PlaneAngleUnit.milliradian => Milliradian(value * 1000 * PlaneAngleConversionFactor.degreeToRadian),
        PlaneAngleUnit.minuteOfArc => MinuteOfArc(value * 60),
        PlaneAngleUnit.radian => Radian(value * PlaneAngleConversionFactor.degreeToRadian),
      };

  @override
  toString() => '${super.toString()} °';
}