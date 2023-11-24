import '../../frequency_unit.dart';
import 'frequency_value.dart';
import 'gigahertz.dart';
import 'hertz.dart';
import 'megahertz.dart';

class Kilohertz extends FrequencyValue {
  Kilohertz(double britishThermalUnit) : super(britishThermalUnit);

  @override
  FrequencyValue to(FrequencyUnit unit) =>
      switch(unit) {
        FrequencyUnit.hertz => Hertz(value * 1e3),
        FrequencyUnit.kilohertz => Kilohertz(value),
        FrequencyUnit.megahertz => Megahertz(value * 1e-3),
        FrequencyUnit.gigahertz => Gigahertz(value * 1e-6),
      };

  @override
  toString() => '${super.toString()} kHz';
}