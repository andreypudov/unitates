import '../../fuel_economy_unit.dart';
import 'kilometers_per_liter.dart';
import 'liters_per_100_kilometers.dart';
import 'miles_per_gallon.dart';
import 'miles_per_gallon_imperial.dart';

abstract class FuelEconomyValue {
  final double value;

  FuelEconomyValue(this.value);

  factory FuelEconomyValue.from(FuelEconomyUnit unit, double value) {
    return switch (unit) {
      FuelEconomyUnit.milesPerGallon => MilesPerGallon(value),
      FuelEconomyUnit.milesPerGallonImperial => MilesPerGallonImperial(value),
      FuelEconomyUnit.kilometersPerLiter => KilometersPerLiter(value),
      FuelEconomyUnit.litersPer100Kilometers => LitersPer100Kilometers(value),
    };
  }

  FuelEconomyValue to(FuelEconomyUnit unit);
}