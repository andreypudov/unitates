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
import 'us_legal_cup.dart';
import 'us_liquid_gallon.dart';
import 'us_liquid_pint.dart';
import 'us_liquid_quart.dart';
import 'us_tablespoon.dart';
import 'us_teaspoon.dart';
import 'volume_value.dart';

class UsFluidOunce extends VolumeValue {
  UsFluidOunce(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value * 0.125),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value * 0.0078125000082554),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value * 0.031249998216839),
        VolumeUnit.usLiquidPint => UsLiquidPint(value * 0.0625),
        VolumeUnit.usLegalCup => UsLegalCup(value * 0.12322303984375),
        VolumeUnit.usFluidOunce => UsFluidOunce(value),
        VolumeUnit.usTablespoon => UsTablespoon(value * 2),
        VolumeUnit.usTeaspoon => UsTeaspoon(value * 6),
        VolumeUnit.cubicMeter => CubicMeter(value * 2.95735295625e-5),
        VolumeUnit.liter => Liter(value * 0.0295735295625),
        VolumeUnit.milliliter => Milliliter(value * 29.5735295625),
        VolumeUnit.imperialGallon => ImperialGallon(value * 0.006505267067414),
        VolumeUnit.imperialQuart => ImperialQuart(value * 0.026021068269656),
        VolumeUnit.imperialPint => ImperialPint(value * 0.052042136539312),
        VolumeUnit.imperialCup => ImperialCup(value * 0.10408427307862),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value * 1.0408427307862),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value * 1.665348369258),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value * 4.9960451077767),
        VolumeUnit.cubicFoot => CubicFoot(value * 0.0010443793402778),
        VolumeUnit.cubicInch => CubicInch(value * 1.8046875),
      };

  @override
  toString() => '${super.toString()} us fl oz';
}