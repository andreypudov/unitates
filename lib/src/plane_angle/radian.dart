import '../../plane_angle_unit.dart';
import 'arcsecond.dart';
import 'degree.dart';
import 'gradian.dart';
import 'milliradian.dart';
import 'minute_of_arc.dart';
import 'plane_angle_conversion_factor.dart';
import 'plane_angle_value.dart';

class Radian extends PlaneAngleValue {
  Radian(double planeAngle) : super(planeAngle);

  @override
  PlaneAngleValue to(PlaneAngleUnit unit) =>
      switch(unit) {
        PlaneAngleUnit.arcsecond => Arcsecond(value * PlaneAngleConversionFactor.radianToArcsecond),
        PlaneAngleUnit.degree => Degree(value * PlaneAngleConversionFactor.radianToDegree),
        PlaneAngleUnit.gradian => Gradian(value * PlaneAngleConversionFactor.radianToGradian),
        PlaneAngleUnit.milliradian => Milliradian(value * 1000),
        PlaneAngleUnit.minuteOfArc => MinuteOfArc(value * PlaneAngleConversionFactor.radianToMinuteOfArc),
        PlaneAngleUnit.radian => Radian(value),
      };

  @override
  toString() => '${super.toString()} rad';
}