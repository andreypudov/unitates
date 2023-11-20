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
        PressureUnit.bar => Bar(value * 0.0689475729),
        PressureUnit.pascal => Pascal(value * 6894.7572931783),
        PressureUnit.poundPerSquareInch => PoundPerSquareInch(value),
        PressureUnit.standardAtmosphere => StandardAtmosphere(value * 0.0680459639),
        PressureUnit.torr => Torr(value * 51.7149325716),
      };

  @override
  toString() => '${super.toString()} psi';
}