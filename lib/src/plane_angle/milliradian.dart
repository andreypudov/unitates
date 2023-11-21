import '../../plane_angle_unit.dart';
import 'arcsecond.dart';
import 'degree.dart';
import 'gradian.dart';
import 'minute_of_arc.dart';
import 'plane_angle_conversion_factor.dart';
import 'plane_angle_value.dart';
import 'radian.dart';

class Milliradian extends PlaneAngleValue {
  Milliradian(double planeAngle) : super(planeAngle);

  @override
  PlaneAngleValue to(PlaneAngleUnit unit) =>
      switch(unit) {
        PlaneAngleUnit.arcsecond => Arcsecond(value * PlaneAngleConversionFactor.milliradianToArcsecond),
        PlaneAngleUnit.degree => Degree(value * PlaneAngleConversionFactor.milliradianToDegree),
        PlaneAngleUnit.gradian => Gradian(value * PlaneAngleConversionFactor.milliradianToGradian),
        PlaneAngleUnit.milliradian => Milliradian(value),
        PlaneAngleUnit.minuteOfArc => MinuteOfArc(value * PlaneAngleConversionFactor.milliradianToMinuteOfArc),
        PlaneAngleUnit.radian => Radian(value / 1000),
      };

  @override
  toString() => '${super.toString()} mrad';
}