import '../../area_unit.dart';
import 'acre.dart';
import 'area_value.dart';
import 'hectare.dart';
import 'square_foot.dart';
import 'square_inch.dart';
import 'square_kilometer.dart';
import 'square_mile.dart';
import 'square_yard.dart';

class SquareMeter extends AreaValue {
  SquareMeter(double area) : super(area);

  @override
  AreaValue to(AreaUnit unit) =>
      switch(unit) {
        AreaUnit.squareKilometer => SquareKilometer(value * 1e-6),
        AreaUnit.squareMeter => SquareMeter(value),
        AreaUnit.squareMile => SquareMile(value * 3.861021585424458e-7),
        AreaUnit.squareYard => SquareYard(value * 1.19599004630108),
        AreaUnit.squareFoot => SquareFoot(value * 10.76391041671),
        AreaUnit.squareInch => SquareInch(value * 1550.0031000062),
        AreaUnit.hectare => Hectare(value * 1e-4),
        AreaUnit.acre => Acre(value * 0.0002471053814671653),
      };

  @override
  toString() => '${super.toString()} m²';
}