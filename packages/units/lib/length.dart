import 'length_unit.dart';
import 'src/length/length_value.dart';

class Length {
  LengthValue value;

  Length(double distance, LengthUnit unit):
        value = LengthValue.from(unit, distance);

  to(LengthUnit unit) => value.to(unit);

  @override
  toString() => value.toString();
}