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
import 'liter.dart';
import 'us_cup.dart';
import 'us_fluid_ounce.dart';
import 'us_legal_cup.dart';
import 'us_liquid_gallon.dart';
import 'us_liquid_pint.dart';
import 'us_liquid_quart.dart';
import 'us_tablespoon.dart';
import 'us_teaspoon.dart';
import 'volume_value.dart';

class Milliliter extends VolumeValue {
  Milliliter(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value * 0.0042267528377304),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value * 0.00026417205235815),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value * 0.0010566881491367),
        VolumeUnit.usLiquidPint => UsLiquidPint(value * 0.0021133764188652),
        VolumeUnit.usLegalCup => UsLegalCup(value * 0.0041666666666667),
        VolumeUnit.usFluidOunce => UsFluidOunce(value * 0.033814022701843),
        VolumeUnit.usTablespoon => UsTablespoon(value * 0.067628045403686),
        VolumeUnit.usTeaspoon => UsTeaspoon(value * 0.20288413621106),
        VolumeUnit.cubicMeter => CubicMeter(value * 0.000001),
        VolumeUnit.liter => Liter(value * 0.001),
        VolumeUnit.milliliter => Milliliter(value),
        VolumeUnit.imperialGallon => ImperialGallon(value * 0.00021996924829909),
        VolumeUnit.imperialQuart => ImperialQuart(value * 0.00087987699319635),
        VolumeUnit.imperialPint => ImperialPint(value * 0.0017597539863927),
        VolumeUnit.imperialCup => ImperialCup(value * 0.0035195079727854),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value * 0.035195079727854),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value * 0.056312127564566),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value * 0.16893638269379),
        VolumeUnit.cubicFoot => CubicFoot(value * 3.5314666721489e-5),
        VolumeUnit.cubicInch => CubicInch(value * 0.061023744094732),
      };

  @override
  toString() => '${super.toString()} mL';
}