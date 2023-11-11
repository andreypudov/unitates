import '../../digital_storage_unit.dart';

abstract class DigitalStorageValue {
  final double value;

  DigitalStorageValue(this.value);

  factory DigitalStorageValue.from(DigitalStorageUnit unit, double value) {
    return switch (unit) {
      DigitalStorageUnit.bit => Bit(value),
      DigitalStorageUnit.kilobit => Kilobit(value),
      DigitalStorageUnit.kibibit => Kibibit(value),
      DigitalStorageUnit.megabit => Megabit(value),
      DigitalStorageUnit.mebibit => Mebibit(value),
      DigitalStorageUnit.gigabit => Gigabit(value),
      DigitalStorageUnit.gibibit => Gibibit(value),
      DigitalStorageUnit.terabit => Terabit(value),
      DigitalStorageUnit.tebibit => Tebibit(value),
      DigitalStorageUnit.petabit => Petabit(value),
      DigitalStorageUnit.pebibit => Pebibit(value),
      DigitalStorageUnit.byte => Byte(value),
      DigitalStorageUnit.kilobyte => Kilobyte(value),
      DigitalStorageUnit.kibibyte => Kibibyte(value),
      DigitalStorageUnit.megabyte => Megabyte(value),
      DigitalStorageUnit.mebibyte => Mebibyte(value),
      DigitalStorageUnit.gigabyte => Gigabyte(value),
      DigitalStorageUnit.gibibyte => Gibibyte(value),
      DigitalStorageUnit.terabyte => Terabyte(value),
      DigitalStorageUnit.tebibyte => Tebibyte(value),
      DigitalStorageUnit.petabyte => Petabyte(value),
      DigitalStorageUnit.pebibyte => Pebibyte(value),
    };
  }

  DigitalStorageValue to(DigitalStorageUnit unit);
}