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
import 'us_tablespoon.dart';
import 'volume_value.dart';

class UsTeaspoon extends VolumeValue {
  UsTeaspoon(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value * 0.020833333333333),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value * 0.0013020833333333),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value * 0.0052083330361398),
        VolumeUnit.usLiquidPint => UsLiquidPint(value * 0.010416666666667),
        VolumeUnit.usLegalCup => UsLegalCup(value * 0.020537173307292),
        VolumeUnit.usFluidOunce => UsFluidOunce(value * 0.16666666666667),
        VolumeUnit.usTablespoon => UsTablespoon(value * 0.33333333333333),
        VolumeUnit.usTeaspoon => UsTeaspoon(value),
        VolumeUnit.cubicMeter => CubicMeter(value * 4.92892159375e-6),
        VolumeUnit.liter => Liter(value * 0.00492892159375),
        VolumeUnit.milliliter => Milliliter(value * 4.92892159375),
        VolumeUnit.imperialGallon => ImperialGallon(value * 0.0010842111779023),
        VolumeUnit.imperialQuart => ImperialQuart(value * 0.0043368447116093),
        VolumeUnit.imperialPint => ImperialPint(value * 0.0086736894232186),
        VolumeUnit.imperialCup => ImperialCup(value * 0.017347378846437),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value * 0.17347378846437),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value * 0.277558061543),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value * 0.83267418462946),
        VolumeUnit.cubicFoot => CubicFoot(value * 0.00017406322337963),
        VolumeUnit.cubicInch => CubicInch(value * 0.30078125),
      };

  @override
  toString() => '${super.toString()} us tsp';
}