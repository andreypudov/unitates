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
        MassUnit.metricTon => MetricTon(value * 0.00635029318),
        MassUnit.kilogram => Kilogram(value * 6.35029318),
        MassUnit.gram => Gram(value * 6350.29318),
        MassUnit.milligram => Milligram(value * 6.35029318e+6),
        MassUnit.microgram => Microgram(value * 6.35029318e+9),
        MassUnit.imperialTon => ImperialTon(value * 0.00625),
        MassUnit.usTon => UsTon(value * 0.007),
        MassUnit.stone => Stone(value),
        MassUnit.pound => Pound(value * 14),
        MassUnit.ounce => Ounce(value * 224),
      };

  @override
  toString() => '${super.toString()} st';
}