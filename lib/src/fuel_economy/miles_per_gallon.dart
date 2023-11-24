import '../../fuel_economy_unit.dart';
import 'fuel_economy_value.dart';
import 'kilometers_per_liter.dart';
import 'liters_per_100_kilometers.dart';
import 'miles_per_gallon_imperial.dart';

class MilesPerGallon extends FuelEconomyValue {
  MilesPerGallon(double britishThermalUnit) : super(britishThermalUnit);

  @override
  FuelEconomyValue to(FuelEconomyUnit unit) =>
      switch(unit) {
        FuelEconomyUnit.milesPerGallon => MilesPerGallon(value),
        FuelEconomyUnit.milesPerGallonImperial => MilesPerGallonImperial(value * 1.200951396304),
        FuelEconomyUnit.kilometersPerLiter => KilometersPerLiter(value * 0.425144),
        FuelEconomyUnit.litersPer100Kilometers => LitersPer100Kilometers(value * 235.2144214666),
      };

  @override
  toString() => '${super.toString()} mpg';
}