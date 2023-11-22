import '../../volume_unit.dart';
import 'cubic_foot.dart';
import 'cubic_inch.dart';
import 'cubic_meter.dart';
import 'imperial_cup.dart';
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

class ImperialFluidOunce extends VolumeValue {
  ImperialFluidOunce(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value * 0.12009499255049),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value * 0.0075059370344053),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value * 0.030023746424431),
        VolumeUnit.usLiquidPint => UsLiquidPint(value * 0.060047496275243),
        VolumeUnit.usLegalCup => UsLegalCup(value * 0.11838776041667),
        VolumeUnit.usFluidOunce => UsFluidOunce(value * 0.96075994040388),
        VolumeUnit.usTablespoon => UsTablespoon(value * 1.9215198808078),
        VolumeUnit.usTeaspoon => UsTeaspoon(value * 5.7645596424233),
        VolumeUnit.cubicMeter => CubicMeter(value * 2.84130625e-5),
        VolumeUnit.liter => Liter(value * 0.0284130625),
        VolumeUnit.milliliter => Milliliter(value * 28.4130625),
        VolumeUnit.imperialGallon => ImperialGallon(value * 0.00625),
        VolumeUnit.imperialQuart => ImperialQuart(value * 0.025),
        VolumeUnit.imperialPint => ImperialPint(value * 0.05),
        VolumeUnit.imperialCup => ImperialCup(value * 0.1),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value * 1.6),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value * 4.8),
        VolumeUnit.cubicFoot => CubicFoot(value * 0.0010033978327243),
        VolumeUnit.cubicInch => CubicInch(value * 1.7338714549476),
      };

  @override
  toString() => '${super.toString()} imperial fl oz';
}