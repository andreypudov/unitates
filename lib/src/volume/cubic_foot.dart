import '../../volume_unit.dart';
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
import 'us_liquid_quart.dart';
import 'us_tablespoon.dart';
import 'us_teaspoon.dart';
import 'volume_value.dart';

class CubicFoot extends VolumeValue {
  CubicFoot(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value * 119.68831168831),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value * 7.4805194805195),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value * 29.922076214689),
        VolumeUnit.usLiquidPint => UsLiquidPint(value * 59.844155844156),
        VolumeUnit.usLegalCup => UsLegalCup(value * 117.9868608),
        VolumeUnit.usFluidOunce => UsFluidOunce(value * 957.50649350649),
        VolumeUnit.usTablespoon => UsTablespoon(value * 1915.012987013),
        VolumeUnit.usTeaspoon => UsTeaspoon(value * 5745.038961039),
        VolumeUnit.cubicMeter => CubicMeter(value * 0.028316846592),
        VolumeUnit.liter => Liter(value * 28.316846592),
        VolumeUnit.milliliter => Milliliter(value * 28316.846592),
        VolumeUnit.imperialGallon => ImperialGallon(value * 6.2288354590428),
        VolumeUnit.imperialQuart => ImperialQuart(value * 24.915341836171),
        VolumeUnit.imperialPint => ImperialPint(value * 49.830683672343),
        VolumeUnit.imperialCup => ImperialCup(value * 99.661367344685),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value * 996.61367344685),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value * 1594.581877515),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value * 4783.7456325476),
        VolumeUnit.cubicFoot => CubicFoot(value),
        VolumeUnit.cubicInch => CubicInch(value * 1728),
      };

  @override
  toString() => '${super.toString()} ft³';
}