import 'package:units/length/length_units.dart';
import 'package:units/length/length_value.dart';

sealed class Length {
  LengthValue value;

  Length(double distance, LengthUnit unit):
      value = LengthValue.from(unit, distance);

  to(LengthUnit unit) => value.to(unit);
}