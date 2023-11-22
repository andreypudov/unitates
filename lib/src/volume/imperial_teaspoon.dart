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

class ImperialTeaspoon extends VolumeValue {
  ImperialTeaspoon(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value * 0.02501979011467),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value * 0.0015637368821669),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value * 0.006254947171753),
        VolumeUnit.usLiquidPint => UsLiquidPint(value * 0.012509895057335),
        VolumeUnit.usLegalCup => UsLegalCup(value * 0.024664116753458),
        VolumeUnit.usFluidOunce => UsFluidOunce(value * 0.20015832091736),
        VolumeUnit.usTablespoon => UsTablespoon(value * 0.40031664183473),
        VolumeUnit.usTeaspoon => UsTeaspoon(value * 1.2009499255042),
        VolumeUnit.cubicMeter => CubicMeter(value * 5.91938802083e-6),
        VolumeUnit.liter => Liter(value * 0.00591938802083),
        VolumeUnit.milliliter => Milliliter(value * 5.91938802083),
        VolumeUnit.imperialGallon => ImperialGallon(value * 0.00130208),
        VolumeUnit.imperialQuart => ImperialQuart(value * 0.00520833),
        VolumeUnit.imperialPint => ImperialPint(value * 0.01041667),
        VolumeUnit.imperialCup => ImperialCup(value * 0.02083333),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value * 0.20833333),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value * 0.33333333),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value),
        VolumeUnit.cubicFoot => CubicFoot(value * 0.00020904121515078),
        VolumeUnit.cubicInch => CubicInch(value * 0.36122321978055),
      };

  @override
  toString() => '${super.toString()} imperial tsp';
}