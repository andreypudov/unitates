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
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value),
        VolumeUnit.usLiquidPint => UsLiquidPint(value),
        VolumeUnit.usLegalCup => UsLegalCup(value),
        VolumeUnit.usFluidOunce => UsFluidOunce(value),
        VolumeUnit.usTablespoon => UsTablespoon(value),
        VolumeUnit.usTeaspoon => UsTeaspoon(value),
        VolumeUnit.cubicMeter => CubicMeter(value),
        VolumeUnit.liter => Liter(value),
        VolumeUnit.milliliter => Milliliter(value),
        VolumeUnit.imperialGallon => ImperialGallon(value),
        VolumeUnit.imperialQuart => ImperialQuart(value),
        VolumeUnit.imperialPint => ImperialPint(value),
        VolumeUnit.imperialCup => ImperialCup(value),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value),
        VolumeUnit.cubicFoot => CubicFoot(value),
        VolumeUnit.cubicInch => CubicInch(value),
      };

  @override
  toString() => '${super.toString()} imperial gal';
}