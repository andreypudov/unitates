import '../../volume_unit.dart';
import 'cubic_foot.dart';
import 'cubic_inch.dart';
import 'cubic_meter.dart';
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

class ImperialCup extends VolumeValue {
  ImperialCup(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value * 1.2009499255049),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value * 0.075059370344053),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value * 0.30023746424431),
        VolumeUnit.usLiquidPint => UsLiquidPint(value * 0.60047496275243),
        VolumeUnit.usLegalCup => UsLegalCup(value * 1.1838776041667),
        VolumeUnit.usFluidOunce => UsFluidOunce(value * 9.6075994040388),
        VolumeUnit.usTablespoon => UsTablespoon(value * 19.215198808078),
        VolumeUnit.usTeaspoon => UsTeaspoon(value * 57.645596424233),
        VolumeUnit.cubicMeter => CubicMeter(value * 0.000284130625),
        VolumeUnit.liter => Liter(value * 0.284130625),
        VolumeUnit.milliliter => Milliliter(value * 284.130625),
        VolumeUnit.imperialGallon => ImperialGallon(value * 0.0625),
        VolumeUnit.imperialQuart => ImperialQuart(value * 0.25),
        VolumeUnit.imperialPint => ImperialPint(value * 0.5),
        VolumeUnit.imperialCup => ImperialCup(value),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value * 10),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value * 16),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value * 48),
        VolumeUnit.cubicFoot => CubicFoot(value * 0.010033978327243),
        VolumeUnit.cubicInch => CubicInch(value * 17.338714549476),
      };

  @override
  toString() => '${super.toString()} imperial cup';
}