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
import 'us_liquid_quart.dart';
import 'us_teaspoon.dart';
import 'volume_value.dart';

class UsTablespoon extends VolumeValue {
  UsTablespoon(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value * 0.0625),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value * 0.00390625),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value * 0.015624999108419),
        VolumeUnit.usLiquidPint => UsLiquidPint(value * 0.03125),
        VolumeUnit.usLegalCup => UsLegalCup(value * 0.061611519921875),
        VolumeUnit.usFluidOunce => UsFluidOunce(value * 0.5),
        VolumeUnit.usTablespoon => UsTablespoon(value),
        VolumeUnit.usTeaspoon => UsTeaspoon(value * 3),
        VolumeUnit.cubicMeter => CubicMeter(value * 1.478676478125e-5),
        VolumeUnit.liter => Liter(value * 0.01478676478125),
        VolumeUnit.milliliter => Milliliter(value * 14.78676478125),
        VolumeUnit.imperialGallon => ImperialGallon(value * 0.003252633533707),
        VolumeUnit.imperialQuart => ImperialQuart(value * 0.013010534134828),
        VolumeUnit.imperialPint => ImperialPint(value * 0.026021068269656),
        VolumeUnit.imperialCup => ImperialCup(value * 0.052042136539312),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value * 0.52042136539312),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value * 0.83267418462899),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value * 2.4980225538884),
        VolumeUnit.cubicFoot => CubicFoot(value * 0.00052218967013889),
        VolumeUnit.cubicInch => CubicInch(value * 0.90234375),
      };

  @override
  toString() => '${super.toString()} us tbsp';
}