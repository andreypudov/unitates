import '../../area_unit.dart';
import 'area_value.dart';
import 'hectare.dart';
import 'square_foot.dart';
import 'square_inch.dart';
import 'square_kilometer.dart';
import 'square_meter.dart';
import 'square_mile.dart';
import 'square_yard.dart';

class Acre extends AreaValue {
  Acre(double area) : super(area);

  @override
  AreaValue to(AreaUnit unit) =>
      switch(unit) {
        AreaUnit.squareKilometer => SquareKilometer(value * 0.004046856422),
        AreaUnit.squareMeter => SquareMeter(value * 4046.856422),
        AreaUnit.squareMile => SquareMile(value / 640),
        AreaUnit.squareYard => SquareYard(value * 4840),
        AreaUnit.squareFoot => SquareFoot(value * 43560),
        AreaUnit.squareInch => SquareInch(value * 6272640),
        AreaUnit.hectare => Hectare(value * 0.4046856422),
        AreaUnit.acre => Acre(value),
      };

  @override
  toString() => '${super.toString()} ac';
}