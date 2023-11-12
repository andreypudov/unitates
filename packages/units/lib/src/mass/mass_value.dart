import '../../mass_unit.dart';
import 'gram.dart';
import 'imperial_ton.dart';
import 'kilogram.dart';
import 'metric_ton.dart';
import 'microgram.dart';
import 'milligram.dart';
import 'ounce.dart';
import 'pound.dart';
import 'stone.dart';
import 'us_ton.dart';

abstract class MassValue {
  final double value;

  MassValue(this.value);

  factory MassValue.from(MassUnit unit, double value) {
    return switch (unit) {
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
  }

  MassValue to(MassUnit unit);

  @override
  toString() => value.toString();
}