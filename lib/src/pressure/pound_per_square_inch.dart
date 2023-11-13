import '../../pressure_unit.dart';
import 'bar.dart';
import 'pascal.dart';
import 'pressure_value.dart';
import 'standard_atmosphere.dart';
import 'torr.dart';

class PoundPerSquareInch extends PressureValue {
  PoundPerSquareInch(double pressure) : super(pressure);

  @override
  PressureValue to(PressureUnit unit) =>
      switch(unit) {
        PressureUnit.bar => Bar(value),
        PressureUnit.pascal => Pascal(value),
        PressureUnit.poundPerSquareInch => PoundPerSquareInch(value),
        PressureUnit.standardAtmosphere => StandardAtmosphere(value),
        PressureUnit.torr => Torr(value),
      };

  @override
  toString() => '${super.toString()} psi';
}