import 'package:units/length/centimeter.dart';
import 'package:units/length/length_units.dart';
import 'package:units/length/meter.dart';

abstract class LengthValue {
  final double value;
  final LengthUnit unit;

  LengthValue(this.value, this.unit);

  factory LengthValue.from(LengthUnit unit, double value) {
    if (value < 0) {
      throw ArgumentError('Distance cannot be negative');
    }

    return switch (unit) {
      LengthUnit.meter => Meter(value),
      LengthUnit.centimeter => Centimeter(value)
    };
  }

  LengthValue to(LengthUnit unit);
}