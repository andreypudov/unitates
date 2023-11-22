import '../../volume_unit.dart';
import 'cubic_foot.dart';
import 'cubic_meter.dart';
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

class CubicInch extends VolumeValue {
  CubicInch(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value * 0.069264069264069),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value * 0.0043290043290043),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value * 0.017316016327945),
        VolumeUnit.usLiquidPint => UsLiquidPint(value * 0.034632034632035),
        VolumeUnit.usLegalCup => UsLegalCup(value * 0.068279433333333),
        VolumeUnit.usFluidOunce => UsFluidOunce(value * 0.55411255411255),
        VolumeUnit.usTablespoon => UsTablespoon(value * 1.1082251082251),
        VolumeUnit.usTeaspoon => UsTeaspoon(value * 3.3246753246753),
        VolumeUnit.cubicMeter => CubicMeter(value * 1.6387064e-5),
        VolumeUnit.liter => Liter(value * 0.016387064),
        VolumeUnit.milliliter => Milliliter(value * 16.387064),
        VolumeUnit.imperialGallon => ImperialGallon(value * 0.003604650149909),
        VolumeUnit.imperialQuart => ImperialQuart(value * 0.014418600599636),
        VolumeUnit.imperialPint => ImperialPint(value * 0.028837201199272),
        VolumeUnit.imperialCup => ImperialCup(value * 0.057674402398545),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value * 0.57674402398545),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value * 0.92279043837671),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value * 2.7683713151317),
        VolumeUnit.cubicFoot => CubicFoot(value / 1728),
        VolumeUnit.cubicInch => CubicInch(value),
      };

  @override
  toString() => '${super.toString()} in³';
}