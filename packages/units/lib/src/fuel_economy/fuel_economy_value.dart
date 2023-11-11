import '../../fuel_economy_unit.dart';

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