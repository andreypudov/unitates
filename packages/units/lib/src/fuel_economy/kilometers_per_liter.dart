import '../../fuel_economy_unit.dart';
import 'fuel_economy_value.dart';
import 'liters_per_100_kilometers.dart';
import 'miles_per_gallon.dart';
import 'miles_per_gallon_imperial.dart';

class KilometersPerLiter extends FuelEconomyValue {
  KilometersPerLiter(double britishThermalUnit) : super(britishThermalUnit);

  @override
  FuelEconomyValue to(FuelEconomyUnit unit) =>
      switch(unit) {
        FuelEconomyUnit.milesPerGallon => MilesPerGallon(value),
        FuelEconomyUnit.milesPerGallonImperial => MilesPerGallonImperial(value),
        FuelEconomyUnit.kilometersPerLiter => KilometersPerLiter(value),
        FuelEconomyUnit.litersPer100Kilometers => LitersPer100Kilometers(value),
      };
}