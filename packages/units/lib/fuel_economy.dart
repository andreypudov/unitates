import 'fuel_economy_unit.dart';
import 'src/fuel_economy/fuel_economy_value.dart';

class FuelEconomy {
  FuelEconomyValue value;

  FuelEconomy(double fuelEconomy, FuelEconomyUnit unit):
        value = FuelEconomyValue.from(unit, fuelEconomy);

  to(FuelEconomyUnit unit) => value.to(unit);

  @override
  toString() => value.toString();
}