import '../../volume_unit.dart';
import 'cubic_foot.dart';
import 'cubic_inch.dart';
import 'cubic_meter.dart';
import 'imperial_cup.dart';
import 'imperial_fluid_ounce.dart';
import 'imperial_gallon.dart';
import 'imperial_pint.dart';
import 'imperial_quart.dart';
import 'imperial_tablespoon.dart';
import 'imperial_teaspoon.dart';
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

class Liter extends VolumeValue {
  Liter(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value * 4.2267528377304),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value * 0.26417205235815),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value * 1.0566881491367),
        VolumeUnit.usLiquidPint => UsLiquidPint(value * 2.1133764188652),
        VolumeUnit.usLegalCup => UsLegalCup(value * 4.1666666666667),
        VolumeUnit.usFluidOunce => UsFluidOunce(value * 33.814022701843),
        VolumeUnit.usTablespoon => UsTablespoon(value * 67.628045403686),
        VolumeUnit.usTeaspoon => UsTeaspoon(value * 202.88413621106),
        VolumeUnit.cubicMeter => CubicMeter(value * 0.001),
        VolumeUnit.liter => Liter(value),
        VolumeUnit.milliliter => Milliliter(value * 1000),
        VolumeUnit.imperialGallon => ImperialGallon(value * 0.21996924829909),
        VolumeUnit.imperialQuart => ImperialQuart(value * 0.87987699319635),
        VolumeUnit.imperialPint => ImperialPint(value * 1.7597539863927),
        VolumeUnit.imperialCup => ImperialCup(value * 3.5195079727854),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value * 35.195079727854),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value * 56.312127564566),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value * 168.93638269379),
        VolumeUnit.cubicFoot => CubicFoot(value * 0.035314666721489),
        VolumeUnit.cubicInch => CubicInch(value * 61.023744094732),
      };

  @override
  toString() => '${super.toString()} L';
}