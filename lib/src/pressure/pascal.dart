import '../../pressure_unit.dart';
import 'bar.dart';
import 'pound_per_square_inch.dart';
import 'pressure_value.dart';
import 'standard_atmosphere.dart';
import 'torr.dart';

class Pascal extends PressureValue {
  Pascal(double pressure) : super(pressure);

  @override
  PressureValue to(PressureUnit unit) =>
      switch(unit) {
        PressureUnit.bar => Bar(value / 100000),
        PressureUnit.pascal => Pascal(value),
        PressureUnit.poundPerSquareInch => PoundPerSquareInch(value * 0.00014503773),
        PressureUnit.standardAtmosphere => StandardAtmosphere(value * 9.8692326671601e-6),
        PressureUnit.torr => Torr(value * 0.00750061682704),
      };

  @override
  toString() => '${super.toString()} Pa';
}