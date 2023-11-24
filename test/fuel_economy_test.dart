import 'package:flutter_test/flutter_test.dart';

import 'package:units/fuel_economy.dart';
import 'package:units/fuel_economy_unit.dart';

import 'src/less_precise_or_equals.dart';

void main() {
  group("should convert correctly", () {
    Map<FuelEconomy, List<double>> implementation = {
      /*                                                                     mpg       mpg (imp)     km/L           L/100km */
      FuelEconomy(1, FuelEconomyUnit.milesPerGallon):         [               1,  1.200951396304, 0.425144,  235.2144214666],
      FuelEconomy(1, FuelEconomyUnit.milesPerGallonImperial): [0.83267316485708,               1, 0.354006, 282.48108789117],
      FuelEconomy(1, FuelEconomyUnit.kilometersPerLiter):     [ 2.3521442146661, 2.8248108789117,        1,             100],
      FuelEconomy(1, FuelEconomyUnit.litersPer100Kilometers): [ 235.21442146661, 282.48108789117,      100,               1],
    };

    Map<FuelEconomy, List<double>> requirements = {
      /*                                                                    mpg         mpg (imp)     km/L          L/100km */
      FuelEconomy(1, FuelEconomyUnit.milesPerGallon):         [               1,         1.20095, 0.425144,         235.215],
      FuelEconomy(1, FuelEconomyUnit.milesPerGallonImperial): [        0.832674,               1, 0.354006,         282.481],
      FuelEconomy(1, FuelEconomyUnit.kilometersPerLiter):     [         2.35215,         2.82481,        1,             100],
      FuelEconomy(1, FuelEconomyUnit.litersPer100Kilometers): [         235.215,         282.481,      100,               1],
    };

    test("should cover supported units", () {
      expect(FuelEconomyUnit.values.length, implementation.values.first.length);
      expect(FuelEconomyUnit.values.length, requirements.values.first.length);
    });

    implementation.forEach((actual, expected) {
      test("$actual should convert exactly", () {
        expect(actual.to(FuelEconomyUnit.milesPerGallon).value, expected[0]);
        expect(actual.to(FuelEconomyUnit.milesPerGallonImperial).value, expected[1]);
        expect(actual.to(FuelEconomyUnit.kilometersPerLiter).value, expected[2]);
        expect(actual.to(FuelEconomyUnit.litersPer100Kilometers).value, expected[3]);
      });
    });

    requirements.forEach((actual, expected) {
      test("$actual should convert closely", () {
        expect(actual.to(FuelEconomyUnit.milesPerGallon).value, lessPreciseOrEquals(expected[0]));
        expect(actual.to(FuelEconomyUnit.milesPerGallonImperial).value, lessPreciseOrEquals(expected[1]));
        expect(actual.to(FuelEconomyUnit.kilometersPerLiter).value, lessPreciseOrEquals(expected[2]));
        expect(actual.to(FuelEconomyUnit.litersPer100Kilometers).value, lessPreciseOrEquals(expected[3]));
      });
    });

    test("should use standard symbols", () {
      expect(FuelEconomy(1, FuelEconomyUnit.milesPerGallon).toString(), "1.0 mpg");
      expect(FuelEconomy(1, FuelEconomyUnit.milesPerGallonImperial).toString(), "1.0 mpg (imp)");
      expect(FuelEconomy(1, FuelEconomyUnit.kilometersPerLiter).toString(), "1.0 km/L");
      expect(FuelEconomy(1, FuelEconomyUnit.litersPer100Kilometers).toString(), "1.0 L/100km");
    });
  });
}
