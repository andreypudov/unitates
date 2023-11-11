import '../../digital_storage_unit.dart';
import 'bit.dart';
import 'byte.dart';
import 'digital_storage_value.dart';
import 'gibibit.dart';
import 'gibibyte.dart';
import 'gigabit.dart';
import 'gigabyte.dart';
import 'kibibit.dart';
import 'kibibyte.dart';
import 'kilobit.dart';
import 'kilobyte.dart';
import 'mebibit.dart';
import 'mebibyte.dart';
import 'megabit.dart';
import 'megabyte.dart';
import 'pebibit.dart';
import 'pebibyte.dart';
import 'petabit.dart';
import 'petabyte.dart';
import 'tebibyte.dart';
import 'terabit.dart';
import 'terabyte.dart';

class Tebibit extends DigitalStorageValue {
  Tebibit(double digitalStorage) : super(digitalStorage);

  @override
  DigitalStorageValue to(DigitalStorageUnit unit) =>
      switch(unit) {
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