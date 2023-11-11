import '../../pressure_unit.dart';

abstract class PressureValue {
  final double value;

  PressureValue(this.value);

  factory PressureValue.from(PressureUnit unit, double value) {
    return switch (unit) {
      PressureUnit.bar => Bar(value),
      PressureUnit.pascal => Pascal(value),
      PressureUnit.poundPerSquareInch => PoundPerSquareInch(value),
      PressureUnit.standardAtmosphere => StandardAtmosphere(value),
      PressureUnit.torr => Torr(value),
    };
  }

  PressureValue to(PressureUnit unit);
}