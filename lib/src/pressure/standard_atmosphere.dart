import '../../pressure_unit.dart';
import 'bar.dart';
import 'pascal.dart';
import 'pound_per_square_inch.dart';
import 'pressure_value.dart';
import 'torr.dart';

class StandardAtmosphere extends PressureValue {
  StandardAtmosphere(double pressure) : super(pressure);

  @override
  PressureValue to(PressureUnit unit) =>
      switch(unit) {
        PressureUnit.bar => Bar(value * 1.01325),
        PressureUnit.pascal => Pascal(value * 101325),
        PressureUnit.poundPerSquareInch => PoundPerSquareInch(value * 14.6959487755),
        PressureUnit.standardAtmosphere => StandardAtmosphere(value),
        PressureUnit.torr => Torr(value * 759.9999999998),
      };

  @override
  toString() => '${super.toString()} atm';
}