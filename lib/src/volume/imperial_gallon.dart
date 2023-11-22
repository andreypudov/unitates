import '../../volume_unit.dart';
import 'cubic_foot.dart';
import 'cubic_inch.dart';
import 'cubic_meter.dart';
import 'imperial_cup.dart';
import 'imperial_fluid_ounce.dart';
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

class ImperialGallon extends VolumeValue {
  ImperialGallon(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value * 19.215198808078),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value * 1.2009499255049),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value * 4.803799427909),
        VolumeUnit.usLiquidPint => UsLiquidPint(value * 9.6075994040388),
        VolumeUnit.usLegalCup => UsLegalCup(value * 18.942041666667),
        VolumeUnit.usFluidOunce => UsFluidOunce(value * 153.72159046462),
        VolumeUnit.usTablespoon => UsTablespoon(value * 307.44318092924),
        VolumeUnit.usTeaspoon => UsTeaspoon(value * 922.32954278773),
        VolumeUnit.cubicMeter => CubicMeter(value * 0.00454609),
        VolumeUnit.liter => Liter(value * 4.54609),
        VolumeUnit.milliliter => Milliliter(value * 4546.09),
        VolumeUnit.imperialGallon => ImperialGallon(value),
        VolumeUnit.imperialQuart => ImperialQuart(value * 4),
        VolumeUnit.imperialPint => ImperialPint(value * 8),
        VolumeUnit.imperialCup => ImperialCup(value * 16),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value * 160),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value * 256),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value * 768),
        VolumeUnit.cubicFoot => CubicFoot(value * 0.16054365323589),
        VolumeUnit.cubicInch => CubicInch(value * 277.41943279162),
      };

  @override
  toString() => '${super.toString()} imperial gal';
}