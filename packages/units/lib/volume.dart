import 'volume_unit.dart';
import 'src/volume/volume_value.dart';

class Volume {
  VolumeValue value;

  Volume(double volume, VolumeUnit unit):
        value = VolumeValue.from(unit, volume);

  to(VolumeUnit unit) => value.to(unit);

  @override
  toString() => value.toString();
}