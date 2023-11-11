import 'plane_angle_unit.dart';
import 'src/plane_angle/plane_angle_value.dart';

class PlaneAngle {
  PlaneAngle value;

  PlaneAngle(double planeAngle, PlaneAngleUnit unit):
        value = PlaneAngleValue.from(unit, planeAngle);

  to(PlaneAngleUnit unit) => value.to(unit);
}