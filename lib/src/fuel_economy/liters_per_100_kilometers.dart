import '../../fuel_economy_unit.dart';
import 'fuel_economy_value.dart';
import 'kilometers_per_liter.dart';
import 'miles_per_gallon.dart';
import 'miles_per_gallon_imperial.dart';

class LitersPer100Kilometers extends FuelEconomyValue {
  LitersPer100Kilometers(double britishThermalUnit) : super(britishThermalUnit);

  @override
  FuelEconomyValue to(FuelEconomyUnit unit) =>
      switch(unit) {
        FuelEconomyUnit.milesPerGallon => MilesPerGallon(value * 235.21442146661),
        FuelEconomyUnit.milesPerGallonImperial => MilesPerGallonImperial(value * 282.48108789117),
        FuelEconomyUnit.kilometersPerLiter => KilometersPerLiter(value * 100),
        FuelEconomyUnit.litersPer100Kilometers => LitersPer100Kilometers(value),
      };

  @override
  toString() => '${super.toString()} L/100km';
}