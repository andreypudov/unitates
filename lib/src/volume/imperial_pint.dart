import '../../volume_unit.dart';
import 'cubic_foot.dart';
import 'cubic_inch.dart';
import 'cubic_meter.dart';
import 'imperial_cup.dart';
import 'imperial_fluid_ounce.dart';
import 'imperial_gallon.dart';
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

class ImperialPint extends VolumeValue {
  ImperialPint(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value * 2.4018998510097),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value * 0.15011874068811),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value * 0.60047492848863),
        VolumeUnit.usLiquidPint => UsLiquidPint(value * 1.2009499255049),
        VolumeUnit.usLegalCup => UsLegalCup(value * 2.3677552083333),
        VolumeUnit.usFluidOunce => UsFluidOunce(value * 19.215198808078),
        VolumeUnit.usTablespoon => UsTablespoon(value * 38.430397616155),
        VolumeUnit.usTeaspoon => UsTeaspoon(value * 115.29119284847),
        VolumeUnit.cubicMeter => CubicMeter(value * 0.00056826125),
        VolumeUnit.liter => Liter(value * 0.56826125),
        VolumeUnit.milliliter => Milliliter(value * 568.26125),
        VolumeUnit.imperialGallon => ImperialGallon(value * 0.125),
        VolumeUnit.imperialQuart => ImperialQuart(value * 0.5),
        VolumeUnit.imperialPint => ImperialPint(value),
        VolumeUnit.imperialCup => ImperialCup(value * 2),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value * 20),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value * 32),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value * 96),
        VolumeUnit.cubicFoot => CubicFoot(value * 0.020067956654487),
        VolumeUnit.cubicInch => CubicInch(value * 34.677429098953),
      };

  @override
  toString() => '${super.toString()} imperial pt';
}