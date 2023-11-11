import '../../plane_angle_unit.dart';
import 'arcsecond.dart';
import 'degree.dart';
import 'gradian.dart';
import 'minute_of_arc.dart';
import 'plane_angle_value.dart';
import 'radian.dart';

class Milliradian extends PlaneAngleValue {
  Milliradian(double planeAngle) : super(planeAngle);

  @override
  PlaneAngleValue to(PlaneAngleUnit unit) =>
      switch(unit) {
        PlaneAngleUnit.arcsecond => Arcsecond(value),
        PlaneAngleUnit.degree => Degree(value),
        PlaneAngleUnit.gradian => Gradian(value),
        PlaneAngleUnit.milliradian => Milliradian(value),
        PlaneAngleUnit.minuteOfArc => MinuteOfArc(value),
        PlaneAngleUnit.radian => Radian(value),
      };
}