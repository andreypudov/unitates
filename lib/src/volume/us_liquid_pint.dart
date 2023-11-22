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
import 'us_liquid_quart.dart';
import 'us_tablespoon.dart';
import 'us_teaspoon.dart';
import 'volume_value.dart';

class UsLiquidPint extends VolumeValue {
  UsLiquidPint(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value * 2),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value * 0.125),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value * 0.5),
        VolumeUnit.usLiquidPint => UsLiquidPint(value),
        VolumeUnit.usLegalCup => UsLegalCup(value * 1.9715686375),
        VolumeUnit.usFluidOunce => UsFluidOunce(value * 16),
        VolumeUnit.usTablespoon => UsTablespoon(value * 32),
        VolumeUnit.usTeaspoon => UsTeaspoon(value * 96),
        VolumeUnit.cubicMeter => CubicMeter(value * 0.000473176473),
        VolumeUnit.liter => Liter(value * 0.473176473),
        VolumeUnit.milliliter => Milliliter(value * 473.176473),
        VolumeUnit.imperialGallon => ImperialGallon(value * 0.10408427307862),
        VolumeUnit.imperialQuart => ImperialQuart(value * 0.41633709231449),
        VolumeUnit.imperialPint => ImperialPint(value * 0.83267418462899),
        VolumeUnit.imperialCup => ImperialCup(value * 1.665348369258),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value * 16.65348369258),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value * 26.645573908128),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value * 79.936721724428),
        VolumeUnit.cubicFoot => CubicFoot(value * 0.016710069444444),
        VolumeUnit.cubicInch => CubicInch(value * 28.875),
      };

  @override
  toString() => '${super.toString()} us pt';
}