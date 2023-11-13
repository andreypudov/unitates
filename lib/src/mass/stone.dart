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
import 'us_ton.dart';

class Stone extends MassValue {
  Stone(double mass) : super(mass);

  @override
  MassValue to(MassUnit unit) =>
      switch(unit) {
        MassUnit.metricTon => MetricTon(value),
        MassUnit.kilogram => Kilogram(value),
        MassUnit.gram => Gram(value),
        MassUnit.milligram => Milligram(value),
        MassUnit.microgram => Microgram(value),
        MassUnit.imperialTon => ImperialTon(value),
        MassUnit.usTon => UsTon(value),
        MassUnit.stone => Stone(value),
        MassUnit.pound => Pound(value),
        MassUnit.ounce => Ounce(value),
      };

  @override
  toString() => '${super.toString()} st';
}