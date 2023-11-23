import '../../mass_unit.dart';
import 'gram.dart';
import 'imperial_ton.dart';
import 'kilogram.dart';
import 'mass_value.dart';
import 'metric_ton.dart';
import 'microgram.dart';
import 'milligram.dart';
import 'pound.dart';
import 'stone.dart';
import 'us_ton.dart';

class Ounce extends MassValue {
  Ounce(double mass) : super(mass);

  @override
  MassValue to(MassUnit unit) =>
      switch(unit) {
        MassUnit.metricTon => MetricTon(value * 2.8349523125e-5),
        MassUnit.kilogram => Kilogram(value * 0.028349523125),
        MassUnit.gram => Gram(value * 28.349523125),
        MassUnit.milligram => Milligram(value * 28349.523125),
        MassUnit.microgram => Microgram(value * 2.8349523125e+7),
        MassUnit.imperialTon => ImperialTon(value * 2.7901785714286e-5),
        MassUnit.usTon => UsTon(value * 3.125e-5),
        MassUnit.stone => Stone(value * 0.0044642857142857),
        MassUnit.pound => Pound(value * 0.0625),
        MassUnit.ounce => Ounce(value),
      };

  @override
  toString() => '${super.toString()} oz';
}