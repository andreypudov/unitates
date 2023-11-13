import '../../area_unit.dart';
import 'acre.dart';
import 'area_value.dart';
import 'hectare.dart';
import 'square_foot.dart';
import 'square_inch.dart';
import 'square_kilometer.dart';
import 'square_meter.dart';
import 'square_mile.dart';

class SquareYard extends AreaValue {
  SquareYard(double area) : super(area);

  @override
  AreaValue to(AreaUnit unit) =>
      switch(unit) {
        AreaUnit.squareKilometer => SquareKilometer(value * 8.3612736e-7),
        AreaUnit.squareMeter => SquareMeter(value * 0.83612736),
        AreaUnit.squareMile => SquareMile(value * 3.228305785123967e-7),
        AreaUnit.squareYard => SquareYard(value),
        AreaUnit.squareFoot => SquareFoot(value * 9),
        AreaUnit.squareInch => SquareInch(value * 1296),
        AreaUnit.hectare => Hectare(value * 8.3612736e-5),
        AreaUnit.acre => Acre(value * 0.0002066115702479339),
      };

  @override
  toString() => '${super.toString()} yd²';
}