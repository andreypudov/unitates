import '../../mass_unit.dart';
import 'gram.dart';
import 'kilogram.dart';
import 'mass_value.dart';
import 'metric_ton.dart';
import 'microgram.dart';
import 'milligram.dart';
import 'ounce.dart';
import 'pound.dart';
import 'stone.dart';
import 'us_ton.dart';

class ImperialTon extends MassValue {
  ImperialTon(double mass) : super(mass);

  @override
  MassValue to(MassUnit unit) =>
      switch(unit) {
        MassUnit.metricTon => MetricTon(value * 1.0160469088),
        MassUnit.kilogram => Kilogram(value * 1.0160469088e+3),
        MassUnit.gram => Gram(value * 1.0160469088e+6),
        MassUnit.milligram => Milligram(value * 1.0160469088e+9),
        MassUnit.microgram => Microgram(value * 1.0160469088e+12),
        MassUnit.imperialTon => ImperialTon(value),
        MassUnit.usTon => UsTon(value * 1.12),
        MassUnit.stone => Stone(value * 160),
        MassUnit.pound => Pound(value * 2240),
        MassUnit.ounce => Ounce(value * 35840),
      };

  @override
  toString() => '${super.toString()} LT';
}