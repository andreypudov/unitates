import '../../plane_angle_unit.dart';
import 'degree.dart';
import 'gradian.dart';
import 'milliradian.dart';
import 'minute_of_arc.dart';
import 'plane_angle_conversion_factor.dart';
import 'plane_angle_value.dart';
import 'radian.dart';

class Arcsecond extends PlaneAngleValue {
  Arcsecond(double planeAngle) : super(planeAngle);

  @override
  PlaneAngleValue to(PlaneAngleUnit unit) =>
      switch(unit) {
        PlaneAngleUnit.arcsecond => Arcsecond(value),
        PlaneAngleUnit.degree => Degree(value / 3600),
        PlaneAngleUnit.gradian => Gradian(value / 3240),
        PlaneAngleUnit.milliradian => Milliradian(value * 1000 * PlaneAngleConversionFactor.arcsecondToRadian),
        PlaneAngleUnit.minuteOfArc => MinuteOfArc(value / 60),
        PlaneAngleUnit.radian => Radian(value * PlaneAngleConversionFactor.arcsecondToRadian),
      };

  @override
  toString() => '${super.toString()} “';
}