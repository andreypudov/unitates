import '../../plane_angle_unit.dart';
import 'degree.dart';
import 'gradian.dart';
import 'milliradian.dart';
import 'minute_of_arc.dart';
import 'plane_angle_value.dart';
import 'radian.dart';

class Arcsecond extends PlaneAngleValue {
  Arcsecond(double planeAngle) : super(planeAngle);

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

  @override
  toString() => '${super.toString()} arcsec';
}