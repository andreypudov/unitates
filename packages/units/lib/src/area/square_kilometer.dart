import '../../area_unit.dart';
import 'acre.dart';
import 'area_value.dart';
import 'hectare.dart';
import 'square_foot.dart';
import 'square_inch.dart';
import 'square_meter.dart';
import 'square_mile.dart';
import 'square_yard.dart';

class SquareKilometer extends AreaValue {
  SquareKilometer(double area) : super(area);

  @override
  AreaValue to(AreaUnit unit) =>
      switch(unit) {
        AreaUnit.squareKilometer => SquareKilometer(value),
        AreaUnit.squareMeter => SquareMeter(value * 1e6),
        AreaUnit.squareMile => SquareMile(value * 0.3861021585424458),
        AreaUnit.squareYard => SquareYard(value * 1.19599004630108e6),
        AreaUnit.squareFoot => SquareFoot(value * 10763910.41671),
        AreaUnit.squareInch => SquareInch(value * 1550003100.0062),
        AreaUnit.hectare => Hectare(value * 100),
        AreaUnit.acre => Acre(value * 247.1053814671653),
      };

  @override
  toString() => '${super.toString()} km²';
}