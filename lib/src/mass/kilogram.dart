import '../../mass_unit.dart';
import 'gram.dart';
import 'imperial_ton.dart';
import 'mass_value.dart';
import 'metric_ton.dart';
import 'microgram.dart';
import 'milligram.dart';
import 'ounce.dart';
import 'pound.dart';
import 'stone.dart';
import 'us_ton.dart';

class Kilogram extends MassValue {
  Kilogram(double mass) : super(mass);

  @override
  MassValue to(MassUnit unit) =>
      switch(unit) {
        MassUnit.metricTon => MetricTon(value * 1e-3),
        MassUnit.kilogram => Kilogram(value),
        MassUnit.gram => Gram(value * 1e+3),
        MassUnit.milligram => Milligram(value * 1e+6),
        MassUnit.microgram => Microgram(value * 1e+9),
        MassUnit.imperialTon => ImperialTon(value * 0.00098420652761106),
        MassUnit.usTon => UsTon(value * 0.0011023113109244),
        MassUnit.stone => Stone(value * 0.15747304441777),
        MassUnit.pound => Pound(value * 2.2046226218488),
        MassUnit.ounce => Ounce(value * 35.27396194958),
      };

  @override
  toString() => '${super.toString()} kg';
}