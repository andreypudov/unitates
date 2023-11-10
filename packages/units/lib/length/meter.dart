import 'package:units/length/length_units.dart';
import 'package:units/length/length_value.dart';
import 'package:units/length/centimeter.dart';

class Meter extends LengthValue {
  Meter(double distance): super(distance, LengthUnit.meter);

  @override
  LengthValue to(LengthUnit unit) {
    return switch (unit) {
      LengthUnit.meter => this,
      LengthUnit.centimeter => Centimeter(value * 100),
    };
  }
}