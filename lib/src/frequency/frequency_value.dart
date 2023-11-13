import '../../frequency_unit.dart';
import 'gigahertz.dart';
import 'hertz.dart';
import 'kilohertz.dart';
import 'megahertz.dart';

abstract class FrequencyValue {
  final double value;

  FrequencyValue(this.value);

  factory FrequencyValue.from(FrequencyUnit unit, double value) {
    return switch (unit) {
      FrequencyUnit.hertz => Hertz(value),
      FrequencyUnit.kilohertz => Kilohertz(value),
      FrequencyUnit.megahertz => Megahertz(value),
      FrequencyUnit.gigahertz => Gigahertz(value),
    };
  }

  FrequencyValue to(FrequencyUnit unit);

  @override
  toString() => value.toString();
}