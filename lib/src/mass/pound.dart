import '../../mass_unit.dart';
import 'gram.dart';
import 'imperial_ton.dart';
import 'kilogram.dart';
import 'mass_value.dart';
import 'metric_ton.dart';
import 'microgram.dart';
import 'milligram.dart';
import 'ounce.dart';
import 'stone.dart';
import 'us_ton.dart';

class Pound extends MassValue {
  Pound(double mass) : super(mass);

  @override
  MassValue to(MassUnit unit) =>
      switch(unit) {
        MassUnit.metricTon => MetricTon(value * 4.5359237e-4),
        MassUnit.kilogram => Kilogram(value * 0.45359237),
        MassUnit.gram => Gram(value * 453.59237),
        MassUnit.milligram => Milligram(value * 453592.37),
        MassUnit.microgram => Microgram(value * 4.5359237e+8),
        MassUnit.imperialTon => ImperialTon(value * 4.4642857142857e-4),
        MassUnit.usTon => UsTon(value * 0.0005),
        MassUnit.stone => Stone(value * 0.071428571428571),
        MassUnit.pound => Pound(value),
        MassUnit.ounce => Ounce(value * 16),
      };

  @override
  toString() => '${super.toString()} lb';
}