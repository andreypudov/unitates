import '../../frequency_unit.dart';
import 'frequency_value.dart';
import 'gigahertz.dart';
import 'hertz.dart';
import 'kilohertz.dart';

class Megahertz extends FrequencyValue {
  Megahertz(double britishThermalUnit) : super(britishThermalUnit);

  @override
  FrequencyValue to(FrequencyUnit unit) =>
      switch(unit) {
        FrequencyUnit.hertz => Hertz(value * 1e6),
        FrequencyUnit.kilohertz => Kilohertz(value * 1e3),
        FrequencyUnit.megahertz => Megahertz(value),
        FrequencyUnit.gigahertz => Gigahertz(value * 1e-3),
      };

  @override
  toString() => '${super.toString()} MHz';
}