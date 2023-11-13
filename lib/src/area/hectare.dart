import '../../area_unit.dart';
import 'acre.dart';
import 'area_value.dart';
import 'square_foot.dart';
import 'square_inch.dart';
import 'square_kilometer.dart';
import 'square_meter.dart';
import 'square_mile.dart';
import 'square_yard.dart';

class Hectare extends AreaValue {
  Hectare(double area) : super(area);

  @override
  AreaValue to(AreaUnit unit) =>
      switch(unit) {
        AreaUnit.squareKilometer => SquareKilometer(value * 0.01),
        AreaUnit.squareMeter => SquareMeter(value * 10000),
        AreaUnit.squareMile => SquareMile(value * 0.003861021585424458),
        AreaUnit.squareYard => SquareYard(value * 11959.9004630108),
        AreaUnit.squareFoot => SquareFoot(value * 107639.1041671),
        AreaUnit.squareInch => SquareInch(value * 15500031.000062),
        AreaUnit.hectare => Hectare(value),
        AreaUnit.acre => Acre(value * 2.471053814671653),
      };

  @override
  toString() => '${super.toString()} ha';
}