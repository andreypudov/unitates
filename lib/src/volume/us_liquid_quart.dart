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
import 'milliliter.dart';
import 'us_cup.dart';
import 'us_fluid_ounce.dart';
import 'us_legal_cup.dart';
import 'us_liquid_gallon.dart';
import 'us_liquid_pint.dart';
import 'us_tablespoon.dart';
import 'us_teaspoon.dart';
import 'volume_value.dart';

class UsLiquidQuart extends VolumeValue {
  UsLiquidQuart(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value * 4),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value * 0.25),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value),
        VolumeUnit.usLiquidPint => UsLiquidPint(value * 2),
        VolumeUnit.usLegalCup => UsLegalCup(value * 4),
        VolumeUnit.usFluidOunce => UsFluidOunce(value * 32),
        VolumeUnit.usTablespoon => UsTablespoon(value * 64),
        VolumeUnit.usTeaspoon => UsTeaspoon(value * 192),
        VolumeUnit.cubicMeter => CubicMeter(value * 0.000946352946),
        VolumeUnit.liter => Liter(value * 0.94635294599999),
        VolumeUnit.milliliter => Milliliter(value * 946.35294599999),
        VolumeUnit.imperialGallon => ImperialGallon(value * 0.20816855803559),
        VolumeUnit.imperialQuart => ImperialQuart(value * 0.83267423214235),
        VolumeUnit.imperialPint => ImperialPint(value * 1.6653484642847),
        VolumeUnit.imperialCup => ImperialCup(value * 3.3306969285694),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value * 33.306969285694),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value * 53.29115085711),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value * 159.87345257142),
        VolumeUnit.cubicFoot => CubicFoot(value * 0.033420140795881),
        VolumeUnit.cubicInch => CubicInch(value * 57.750003295282),
      };

  @override
  toString() => '${super.toString()} us qt';
}