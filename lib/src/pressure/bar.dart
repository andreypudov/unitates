import '../../pressure_unit.dart';
import 'pascal.dart';
import 'pound_per_square_inch.dart';
import 'pressure_value.dart';
import 'standard_atmosphere.dart';
import 'torr.dart';

class Bar extends PressureValue {
  Bar(double pressure) : super(pressure);

  @override
  PressureValue to(PressureUnit unit) =>
      switch(unit) {
        PressureUnit.bar => Bar(value),
        PressureUnit.pascal => Pascal(value * 100000),
        PressureUnit.poundPerSquareInch => PoundPerSquareInch(value * 14.503773773),
        PressureUnit.standardAtmosphere => StandardAtmosphere(value * 0.9869232667),
        PressureUnit.torr => Torr(value * 750.061682704),
      };

  @override
  toString() => '${super.toString()} bar';
}