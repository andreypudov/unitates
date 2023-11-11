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
        FrequencyUnit.kilohertz => Kilohertz(value),
        FrequencyUnit.megahertz => Megahertz(value),
        FrequencyUnit.gigahertz => Gigahertz(value),
      };
}