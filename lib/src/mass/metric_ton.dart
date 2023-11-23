import '../../mass_unit.dart';
import 'gram.dart';
import 'imperial_ton.dart';
import 'kilogram.dart';
import 'mass_value.dart';
import 'microgram.dart';
import 'milligram.dart';
import 'ounce.dart';
import 'pound.dart';
import 'stone.dart';
import 'us_ton.dart';

class MetricTon extends MassValue {
  MetricTon(double mass) : super(mass);

  @override
  MassValue to(MassUnit unit) =>
      switch(unit) {
        MassUnit.metricTon => MetricTon(value),
        MassUnit.kilogram => Kilogram(value * 1e+3),
        MassUnit.gram => Gram(value * 1e+6),
        MassUnit.milligram => Milligram(value * 1e+9),
        MassUnit.microgram => Microgram(value * 1e+12),
        MassUnit.imperialTon => ImperialTon(value * 0.98420652761106),
        MassUnit.usTon => UsTon(value * 1.1023113109244),
        MassUnit.stone => Stone(value * 157.47304441777),
        MassUnit.pound => Pound(value * 2204.6226218488),
        MassUnit.ounce => Ounce(value * 35273.96194958),
      };

  @override
  toString() => '${super.toString()} t';
}