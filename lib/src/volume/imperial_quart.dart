import '../../volume_unit.dart';
import 'cubic_foot.dart';
import 'cubic_inch.dart';
import 'cubic_meter.dart';
import 'imperial_cup.dart';
import 'imperial_fluid_ounce.dart';
import 'imperial_gallon.dart';
import 'imperial_pint.dart';
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

class ImperialQuart extends VolumeValue {
  ImperialQuart(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value * 4.8037997020194),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value * 0.30023748137621),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value * 1.2009498569773),
        VolumeUnit.usLiquidPint => UsLiquidPint(value * 2.4018998510097),
        VolumeUnit.usLegalCup => UsLegalCup(value * 4.7355104166667),
        VolumeUnit.usFluidOunce => UsFluidOunce(value * 38.430397616155),
        VolumeUnit.usTablespoon => UsTablespoon(value * 76.860795232311),
        VolumeUnit.usTeaspoon => UsTeaspoon(value * 230.58238569693),
        VolumeUnit.cubicMeter => CubicMeter(value * 0.0011365225),
        VolumeUnit.liter => Liter(value * 1.1365225),
        VolumeUnit.milliliter => Milliliter(value * 1136.5225),
        VolumeUnit.imperialGallon => ImperialGallon(value * 0.25),
        VolumeUnit.imperialQuart => ImperialQuart(value),
        VolumeUnit.imperialPint => ImperialPint(value * 2),
        VolumeUnit.imperialCup => ImperialCup(value * 4),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value * 40),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value * 64),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value * 192),
        VolumeUnit.cubicFoot => CubicFoot(value * 0.040135913308973),
        VolumeUnit.cubicInch => CubicInch(value * 69.354858197905),
      };

  @override
  toString() => '${super.toString()} imperial qt';
}