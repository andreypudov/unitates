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
        PressureUnit.bar => Bar(value),
        PressureUnit.pascal => Pascal(value),
        PressureUnit.poundPerSquareInch => PoundPerSquareInch(value),
        PressureUnit.standardAtmosphere => StandardAtmosphere(value),
        PressureUnit.torr => Torr(value),
      };
}