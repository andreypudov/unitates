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
import 'us_liquid_pint.dart';
import 'us_liquid_quart.dart';
import 'us_tablespoon.dart';
import 'us_teaspoon.dart';
import 'volume_value.dart';

class UsLiquidGallon extends VolumeValue {
  UsLiquidGallon(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value * 16),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value * 4),
        VolumeUnit.usLiquidPint => UsLiquidPint(value * 8),
        VolumeUnit.usLegalCup => UsLegalCup(value * 15.7725491),
        VolumeUnit.usFluidOunce => UsFluidOunce(value * 128),
        VolumeUnit.usTablespoon => UsTablespoon(value * 256),
        VolumeUnit.usTeaspoon => UsTeaspoon(value * 768),
        VolumeUnit.cubicMeter => CubicMeter(value * 0.003785411784),
        VolumeUnit.liter => Liter(value * 3.785411784),
        VolumeUnit.milliliter => Milliliter(value * 3785.411784),
        VolumeUnit.imperialGallon => ImperialGallon(value * 0.83267418462899),
        VolumeUnit.imperialQuart => ImperialQuart(value * 3.330696738516),
        VolumeUnit.imperialPint => ImperialPint(value * 6.6613934770319),
        VolumeUnit.imperialCup => ImperialCup(value * 13.322786954064),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value * 133.22786954064),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value * 213.16459126502),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value * 639.49377379542),
        VolumeUnit.cubicFoot => CubicFoot(value * 0.13368055555556),
        VolumeUnit.cubicInch => CubicInch(value * 231),
      };

  @override
  toString() => '${super.toString()} us gal';
}