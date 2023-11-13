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
        FuelEconomyUnit.milesPerGallon => MilesPerGallon(value),
        FuelEconomyUnit.milesPerGallonImperial => MilesPerGallonImperial(value),
        FuelEconomyUnit.kilometersPerLiter => KilometersPerLiter(value),
        FuelEconomyUnit.litersPer100Kilometers => LitersPer100Kilometers(value),
      };

  @override
  toString() => '${super.toString()} mpg (imp)';
}