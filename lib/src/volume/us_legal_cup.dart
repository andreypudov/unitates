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
import 'us_liquid_gallon.dart';
import 'us_liquid_pint.dart';
import 'us_liquid_quart.dart';
import 'us_tablespoon.dart';
import 'us_teaspoon.dart';
import 'volume_value.dart';

class UsLegalCup extends VolumeValue {
  UsLegalCup(double volume) : super(volume);

  @override
  VolumeValue to(VolumeUnit unit) =>
      switch(unit) {
        VolumeUnit.usCup => UsCup(value * 1.0144206810553),
        VolumeUnit.usLiquidGallon => UsLiquidGallon(value * 0.063401292565956),
        VolumeUnit.usLiquidQuart => UsLiquidQuart(value * 0.2536051558),
        VolumeUnit.usLiquidPint => UsLiquidPint(value * 0.5072103116),
        VolumeUnit.usLegalCup => UsLegalCup(value),
        VolumeUnit.usFluidOunce => UsFluidOunce(value * 8.1153654484423),
        VolumeUnit.usTablespoon => UsTablespoon(value * 16.230730896885),
        VolumeUnit.usTeaspoon => UsTeaspoon(value * 48.692192690654),
        VolumeUnit.cubicMeter => CubicMeter(value * 0.00023658823648491),
        VolumeUnit.liter => Liter(value * 0.23658823648491),
        VolumeUnit.milliliter => Milliliter(value * 240),
        VolumeUnit.imperialGallon => ImperialGallon(value * 0.052792619591781),
        VolumeUnit.imperialQuart => ImperialQuart(value * 0.21117047836712),
        VolumeUnit.imperialPint => ImperialPint(value * 0.42234095673425),
        VolumeUnit.imperialCup => ImperialCup(value * 0.8446819134685),
        VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value * 8.446819134685),
        VolumeUnit.imperialTablespoon => ImperialTablespoon(value * 13.514910615496),
        VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value * 40.544731846511),
        VolumeUnit.cubicFoot => CubicFoot(value * 0.0084755200131573),
        VolumeUnit.cubicInch => CubicInch(value * 14.645698582736),
      };

  @override
  toString() => '${super.toString()} us legal cup';
}