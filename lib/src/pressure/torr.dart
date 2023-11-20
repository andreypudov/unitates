import '../../pressure_unit.dart';
import 'bar.dart';
import 'pascal.dart';
import 'pound_per_square_inch.dart';
import 'pressure_value.dart';
import 'standard_atmosphere.dart';

class Torr extends PressureValue {
  Torr(double pressure) : super(pressure);

  @override
  PressureValue to(PressureUnit unit) =>
      switch(unit) {
        PressureUnit.bar => Bar(value * 0.0013332237),
        PressureUnit.pascal => Pascal(value * 133.3223684211),
        PressureUnit.poundPerSquareInch => PoundPerSquareInch(value * 0.0193367747),
        PressureUnit.standardAtmosphere => StandardAtmosphere(value * 0.0013157895),
        PressureUnit.torr => Torr(value),
      };

  @override
  toString() => '${super.toString()} torr';
}