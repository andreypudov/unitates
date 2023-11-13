import '../../area_unit.dart';
import 'acre.dart';
import 'area_value.dart';
import 'hectare.dart';
import 'square_foot.dart';
import 'square_inch.dart';
import 'square_kilometer.dart';
import 'square_meter.dart';
import 'square_yard.dart';

class SquareMile extends AreaValue {
  SquareMile(double area) : super(area);

  @override
  AreaValue to(AreaUnit unit) =>
      switch(unit) {
        AreaUnit.squareKilometer => SquareKilometer(value * 2.589988110336),
        AreaUnit.squareMeter => SquareMeter(value * 2589988.11033),
        AreaUnit.squareMile => SquareMile(value),
        AreaUnit.squareYard => SquareYard(value * 3097599.999598),
        AreaUnit.squareFoot => SquareFoot(value * 27878399.996383),
        AreaUnit.squareInch => SquareInch(value * 4014489599.4792),
        AreaUnit.hectare => Hectare(value * 258.9988110336),
        AreaUnit.acre => Acre(value * 640),
      };

  @override
  toString() => '${super.toString()} mi²';
}