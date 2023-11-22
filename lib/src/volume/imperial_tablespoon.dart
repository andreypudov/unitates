import '../../volume_unit.dart';
import 'cubic_foot.dart';
import 'cubic_inch.dart';
import 'cubic_meter.dart';
import 'imperial_cup.dart';
import 'imperial_fluid_ounce.dart';
import 'imperial_gallon.dart';
import 'imperial_pint.dart';
import 'imperial_quart.dart';
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

class ImperialTablespoon extends VolumeValue {
  ImperialTablespoon(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value * 0.075059370344053),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value * 0.0046912106465033),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value * 0.01876484151527),
        VolumeUnit.usLiquidPint => UsLiquidPint(value * 0.037529685172027),
        VolumeUnit.usLegalCup => UsLegalCup(value * 0.073992350260417),
        VolumeUnit.usFluidOunce => UsFluidOunce(value * 0.60047496275243),
        VolumeUnit.usTablespoon => UsTablespoon(value * 1.2009499255049),
        VolumeUnit.usTeaspoon => UsTeaspoon(value * 3.6028497765146),
        VolumeUnit.cubicMeter => CubicMeter(value * 1.77581640625e-5),
        VolumeUnit.liter => Liter(value * 0.0177581640625),
        VolumeUnit.milliliter => Milliliter(value * 17.7581640625),
        VolumeUnit.imperialGallon => ImperialGallon(value * 0.00390625),
        VolumeUnit.imperialQuart => ImperialQuart(value * 0.015625),
        VolumeUnit.imperialPint => ImperialPint(value * 0.03125),
        VolumeUnit.imperialCup => ImperialCup(value * 0.0625),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value * 0.625),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value * 3),
        VolumeUnit.cubicFoot => CubicFoot(value * 0.0006271236454527),
        VolumeUnit.cubicInch => CubicInch(value * 1.0836696593423),
      };

  @override
  toString() => '${super.toString()} imperial tbsp';
}