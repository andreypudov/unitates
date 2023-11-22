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
import 'us_fluid_ounce.dart';
import 'us_legal_cup.dart';
import 'us_liquid_gallon.dart';
import 'us_liquid_pint.dart';
import 'us_liquid_quart.dart';
import 'us_tablespoon.dart';
import 'us_teaspoon.dart';
import 'volume_value.dart';

class UsCup extends VolumeValue {
  UsCup(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value * 1 / 16),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value * 0.25),
        VolumeUnit.usLiquidPint => UsLiquidPint(value * 0.5),
        VolumeUnit.usLegalCup => UsLegalCup(value * 0.98578431875),
        VolumeUnit.usFluidOunce => UsFluidOunce(value * 8),
        VolumeUnit.usTablespoon => UsTablespoon(value * 16),
        VolumeUnit.usTeaspoon => UsTeaspoon(value * 48),
        VolumeUnit.cubicMeter => CubicMeter(value * 0.00023658823648491),
        VolumeUnit.liter => Liter(value * 0.23658823648491),
        VolumeUnit.milliliter => Milliliter(value * 236.58823648491),
        VolumeUnit.imperialGallon => ImperialGallon(value * 0.052042136759281),
        VolumeUnit.imperialQuart => ImperialQuart(value * 0.20816854703712),
        VolumeUnit.imperialPint => ImperialPint(value * 0.41633709231449),
        VolumeUnit.imperialCup => ImperialCup(value * 0.83267418462899),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value * 8.3267418462899),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value * 13.322786954064),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value * 39.968360862214),
        VolumeUnit.cubicFoot => CubicFoot(value * 0.0083550347222222),
        VolumeUnit.cubicInch => CubicInch(value * 14.437499999079),
      };

  @override
  toString() => '${super.toString()} us cup';
}