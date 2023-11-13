import '../../area_unit.dart';
import 'acre.dart';
import 'area_value.dart';
import 'hectare.dart';
import 'square_inch.dart';
import 'square_kilometer.dart';
import 'square_meter.dart';
import 'square_mile.dart';
import 'square_yard.dart';

class SquareFoot extends AreaValue {
  SquareFoot(double area) : super(area);

  @override
  AreaValue to(AreaUnit unit) =>
      switch(unit) {
        AreaUnit.squareKilometer => SquareKilometer(value * 9.290304e-8),
        AreaUnit.squareMeter => SquareMeter(value * 0.09290304),
        AreaUnit.squareMile => SquareMile(value * 3.587006427915e-8),
        AreaUnit.squareYard => SquareYard(value * 0.1111111111111111),
        AreaUnit.squareFoot => SquareFoot(value),
        AreaUnit.squareInch => SquareInch(value * 144),
        AreaUnit.hectare => Hectare(value * 9.290304e-6),
        AreaUnit.acre => Acre(value * 2.295684113865932e-5),
      };

  @override
  toString() => '${super.toString()} ft²';
}