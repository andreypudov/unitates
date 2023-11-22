import '../../volume_unit.dart';
import 'cubic_foot.dart';
import 'cubic_inch.dart';
import 'imperial_cup.dart';
import 'imperial_fluid_ounce.dart';
import 'imperial_gallon.dart';
import 'imperial_pint.dart';
import 'imperial_quart.dart';
import 'imperial_tablespoon.dart';
import 'imperial_teaspoon.dart';
import 'liter.dart';
import 'milliliter.dart';
import 'us_cup.dart';
import 'us_fluid_ounce.dart';
import 'us_legal_cup.dart';
import 'us_liquid_gallon.dart';
import 'us_liquid_pint.dart';
import 'us_liquid_quart.dart';
import 'us_tablespoon.dart';
import 'us_teaspoon.dart';
import 'volume_value.dart';

class CubicMeter extends VolumeValue {
  CubicMeter(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value * 4226.7528377304),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value * 264.17205235815),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value * 1056.6881491367),
        VolumeUnit.usLiquidPint => UsLiquidPint(value * 2113.3764188652),
        VolumeUnit.usLegalCup => UsLegalCup(value * 4166.6666666667),
        VolumeUnit.usFluidOunce => UsFluidOunce(value * 33814.022701843),
        VolumeUnit.usTablespoon => UsTablespoon(value * 67628.045403686),
        VolumeUnit.usTeaspoon => UsTeaspoon(value * 202884.13621106),
        VolumeUnit.cubicMeter => CubicMeter(value),
        VolumeUnit.liter => Liter(value * 1000),
        VolumeUnit.milliliter => Milliliter(value * 1000000),
        VolumeUnit.imperialGallon => ImperialGallon(value * 219.96924829909),
        VolumeUnit.imperialQuart => ImperialQuart(value * 879.87699319635),
        VolumeUnit.imperialPint => ImperialPint(value * 1759.7539863927),
        VolumeUnit.imperialCup => ImperialCup(value * 3519.5079727854),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value * 35195.079727854),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value * 56312.127564566),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value * 168936.38269379),
        VolumeUnit.cubicFoot => CubicFoot(value * 35.314666721489),
        VolumeUnit.cubicInch => CubicInch(value * 61023.744094732),
      };

  @override
  toString() => '${super.toString()} m³';
}