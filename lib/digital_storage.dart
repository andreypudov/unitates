import 'digital_storage_unit.dart';
import 'src/digital_storage/digital_storage_value.dart';

class DigitalStorage {
  DigitalStorageValue value;

  DigitalStorage(double digitalStorage, DigitalStorageUnit unit):
        value = DigitalStorageValue.from(unit, digitalStorage);

  to(DigitalStorageUnit unit) => value.to(unit);

  @override
  toString() => value.toString();
}