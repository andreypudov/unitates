import '../../mass_unit.dart';

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
}