import '../../mass_unit.dart';
import 'gram.dart';
import 'imperial_ton.dart';
import 'kilogram.dart';
import 'mass_value.dart';
import 'metric_ton.dart';
import 'microgram.dart';
import 'milligram.dart';
import 'ounce.dart';
import 'pound.dart';
import 'stone.dart';

class UsTon extends MassValue {
  UsTon(double mass) : super(mass);

  @override
  MassValue to(MassUnit unit) =>
      switch(unit) {
        MassUnit.metricTon => MetricTon(value * 0.90718474),
        MassUnit.kilogram => Kilogram(value * 907.18474),
        MassUnit.gram => Gram(value * 907184.74),
        MassUnit.milligram => Milligram(value * 907184740),
        MassUnit.microgram => Microgram(value * 9.0718474e+11),
        MassUnit.imperialTon => ImperialTon(value * 0.89285714285714),
        MassUnit.usTon => UsTon(value),
        MassUnit.stone => Stone(value * 142.85714285714),
        MassUnit.pound => Pound(value * 2000),
        MassUnit.ounce => Ounce(value * 32000),
      };

  @override
  toString() => '${super.toString()} tn';
}