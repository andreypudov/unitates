import '../../frequency_unit.dart';
import 'frequency_value.dart';
import 'gigahertz.dart';
import 'kilohertz.dart';
import 'megahertz.dart';

class Hertz extends FrequencyValue {
  Hertz(double britishThermalUnit) : super(britishThermalUnit);

  @override
  FrequencyValue to(FrequencyUnit unit) =>
      switch(unit) {
        FrequencyUnit.hertz => Hertz(value),
        FrequencyUnit.kilohertz => Kilohertz(value * 1e-3),
        FrequencyUnit.megahertz => Megahertz(value * 1e-6),
        FrequencyUnit.gigahertz => Gigahertz(value * 1e-9),
      };

  @override
  toString() => '${super.toString()} Hz';
}