import '../../mass_unit.dart';
import 'gram.dart';
import 'imperial_ton.dart';
import 'kilogram.dart';
import 'mass_value.dart';
import 'metric_ton.dart';
import 'microgram.dart';
import 'ounce.dart';
import 'pound.dart';
import 'stone.dart';
import 'us_ton.dart';

class Milligram extends MassValue {
  Milligram(double mass) : super(mass);

  @override
  MassValue to(MassUnit unit) =>
      switch(unit) {
        MassUnit.metricTon => MetricTon(value * 1e-9),
        MassUnit.kilogram => Kilogram(value * 1e-6),
        MassUnit.gram => Gram(value * 1e-3),
        MassUnit.milligram => Milligram(value),
        MassUnit.microgram => Microgram(value * 1e+3),
        MassUnit.imperialTon => ImperialTon(value * 9.8420652761106e-10),
        MassUnit.usTon => UsTon(value * 1.1023113109244e-9),
        MassUnit.stone => Stone(value * 1.5747304441777e-7),
        MassUnit.pound => Pound(value * 2.2046226218488e-6),
        MassUnit.ounce => Ounce(value * 3.527396194958e-5),
      };

  @override
  toString() => '${super.toString()} mg';
}