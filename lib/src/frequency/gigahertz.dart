import '../../frequency_unit.dart';
import 'frequency_value.dart';
import 'hertz.dart';
import 'kilohertz.dart';
import 'megahertz.dart';

class Gigahertz extends FrequencyValue {
  Gigahertz(double britishThermalUnit) : super(britishThermalUnit);

  @override
  FrequencyValue to(FrequencyUnit unit) =>
      switch(unit) {
        FrequencyUnit.hertz => Hertz(value * 1e9),
        FrequencyUnit.kilohertz => Kilohertz(value * 1e6),
        FrequencyUnit.megahertz => Megahertz(value * 1e3),
        FrequencyUnit.gigahertz => Gigahertz(value),
      };

  @override
  toString() => '${super.toString()} GHz';
}