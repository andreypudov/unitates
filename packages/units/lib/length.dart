import 'length_units.dart';
import 'src/length/length_value.dart';

class Length {
  LengthValue value;

  Length(double distance, LengthUnit unit):
        value = LengthValue.from(unit, distance);

  to(LengthUnit unit) => value.to(unit);
}