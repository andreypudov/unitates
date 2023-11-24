import '../../fuel_economy_unit.dart';
import 'fuel_economy_value.dart';
import 'kilometers_per_liter.dart';
import 'liters_per_100_kilometers.dart';
import 'miles_per_gallon.dart';

class MilesPerGallonImperial extends FuelEconomyValue {
  MilesPerGallonImperial(double britishThermalUnit) : super(britishThermalUnit);

  @override
  FuelEconomyValue to(FuelEconomyUnit unit) =>
      switch(unit) {
        FuelEconomyUnit.milesPerGallon => MilesPerGallon(value * 0.83267316485708),
        FuelEconomyUnit.milesPerGallonImperial => MilesPerGallonImperial(value),
        FuelEconomyUnit.kilometersPerLiter => KilometersPerLiter(value * 0.354006),
        FuelEconomyUnit.litersPer100Kilometers => LitersPer100Kilometers(value * 282.48108789117),
      };

  @override
  toString() => '${super.toString()} mpg (imp)';
}