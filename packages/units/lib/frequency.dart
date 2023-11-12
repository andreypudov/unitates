import 'frequency_unit.dart';
import 'src/frequency/frequency_value.dart';

class Frequency {
  FrequencyValue value;

  Frequency(double frequency, FrequencyUnit unit):
        value = FrequencyValue.from(unit, frequency);

  to(FrequencyUnit unit) => value.to(unit);

  @override
  toString() => value.toString();
}