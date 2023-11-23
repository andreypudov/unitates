import '../../mass_unit.dart';
import 'gram.dart';
import 'imperial_ton.dart';
import 'kilogram.dart';
import 'mass_value.dart';
import 'metric_ton.dart';
import 'milligram.dart';
import 'ounce.dart';
import 'pound.dart';
import 'stone.dart';
import 'us_ton.dart';

class Microgram extends MassValue {
  Microgram(double mass) : super(mass);

  @override
  MassValue to(MassUnit unit) =>
      switch(unit) {
        MassUnit.metricTon => MetricTon(value * 1e-12),
        MassUnit.kilogram => Kilogram(value * 1e-9),
        MassUnit.gram => Gram(value * 1e-6),
        MassUnit.milligram => Milligram(value * 1e-3),
        MassUnit.microgram => Microgram(value),
        MassUnit.imperialTon => ImperialTon(value * 9.8420652761106e-13),
        MassUnit.usTon => UsTon(value * 1.1023113109244e-12),
        MassUnit.stone => Stone(value * 1.5747304441777e-10),
        MassUnit.pound => Pound(value * 2.2046226218488e-9),
        MassUnit.ounce => Ounce(value * 3.527396194958e-8),
      };

  @override
  toString() => '${super.toString()} µg';
}