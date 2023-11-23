import '../../mass_unit.dart';
import 'imperial_ton.dart';
import 'kilogram.dart';
import 'mass_value.dart';
import 'metric_ton.dart';
import 'microgram.dart';
import 'milligram.dart';
import 'ounce.dart';
import 'pound.dart';
import 'stone.dart';
import 'us_ton.dart';

class Gram extends MassValue {
  Gram(double mass) : super(mass);

  @override
  MassValue to(MassUnit unit) =>
      switch(unit) {
        MassUnit.metricTon => MetricTon(value * 1e-6),
        MassUnit.kilogram => Kilogram(value * 0.001),
        MassUnit.gram => Gram(value),
        MassUnit.milligram => Milligram(value * 1000),
        MassUnit.microgram => Microgram(value * 1e+6),
        MassUnit.imperialTon => ImperialTon(value * 9.8420652761106e-7),
        MassUnit.usTon => UsTon(value * 1.1023113109244e-6),
        MassUnit.stone => Stone(value * 0.00015747304441777),
        MassUnit.pound => Pound(value * 0.0022046226218488),
        MassUnit.ounce => Ounce(value * 0.03527396194958),
      };

  @override
  toString() => '${super.toString()} g';
}