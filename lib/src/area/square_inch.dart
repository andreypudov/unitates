import '../../area_unit.dart';
import 'acre.dart';
import 'area_value.dart';
import 'hectare.dart';
import 'square_foot.dart';
import 'square_kilometer.dart';
import 'square_meter.dart';
import 'square_mile.dart';
import 'square_yard.dart';

class SquareInch extends AreaValue {
  SquareInch(double area) : super(area);

  @override
  AreaValue to(AreaUnit unit) =>
      switch(unit) {
        AreaUnit.squareKilometer => SquareKilometer(value * 6.4516e-10),
        AreaUnit.squareMeter => SquareMeter(value * 0.00064516),
        AreaUnit.squareMile => SquareMile(value * 2.490976686052e-10),
        AreaUnit.squareYard => SquareYard(value * 0.0007716049382716049),
        AreaUnit.squareFoot => SquareFoot(value * 0.006944444444444444),
        AreaUnit.squareInch => SquareInch(value),
        AreaUnit.hectare => Hectare(value * 6.4516e-8),
        AreaUnit.acre => Acre(value * 1.594225079073e-7),
      };

  @override
  toString() => '${super.toString()} in²';
}