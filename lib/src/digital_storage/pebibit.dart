import 'dart:math';

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
import 'pebibyte.dart';
import 'petabit.dart';
import 'petabyte.dart';
import 'tebibit.dart';
import 'tebibyte.dart';
import 'terabit.dart';
import 'terabyte.dart';

class Pebibit extends DigitalStorageValue {
  Pebibit(double digitalStorage) : super(digitalStorage);

  @override
  DigitalStorageValue to(DigitalStorageUnit unit) =>
      switch(unit) {
        DigitalStorageUnit.bit => Bit(value * pow(1024, 5)),
        DigitalStorageUnit.kilobit => Kilobit(value * pow(1024, 5) / 1000),
        DigitalStorageUnit.kibibit => Kibibit(value * pow(1024, 4)),
        DigitalStorageUnit.megabit => Megabit(value * pow(1024, 5) / pow(1000, 2)),
        DigitalStorageUnit.mebibit => Mebibit(value * pow(1024, 3)),
        DigitalStorageUnit.gigabit => Gigabit(value * pow(1024, 5) / pow(1000, 3)),
        DigitalStorageUnit.gibibit => Gibibit(value * pow(1024, 2)),
        DigitalStorageUnit.terabit => Terabit(value * pow(1024, 5) / pow(1000, 4)),
        DigitalStorageUnit.tebibit => Tebibit(value * 1024),
        DigitalStorageUnit.petabit => Petabit(value * pow(1024, 5) / pow(1000, 5)),
        DigitalStorageUnit.pebibit => Pebibit(value),
        DigitalStorageUnit.byte => Byte(value * pow(1024, 5) / 8),
        DigitalStorageUnit.kilobyte => Kilobyte(value * pow(1024, 5) / (8 * 1000)),
        DigitalStorageUnit.kibibyte => Kibibyte(value * pow(1024, 4) / 8),
        DigitalStorageUnit.megabyte => Megabyte(value * pow(1024, 5) / (8 * pow(1000, 2))),
        DigitalStorageUnit.mebibyte => Mebibyte(value * pow(1024, 3) / 8),
        DigitalStorageUnit.gigabyte => Gigabyte(value * pow(1024, 5) / (8 * pow(1000, 3))),
        DigitalStorageUnit.gibibyte => Gibibyte(value * pow(1024, 2) / 8),
        DigitalStorageUnit.terabyte => Terabyte(value * pow(1024, 5) / (8 * pow(1000, 4))),
        DigitalStorageUnit.tebibyte => Tebibyte(value * 1024 / 8),
        DigitalStorageUnit.petabyte => Petabyte(value * pow(1024, 5) / (8 * pow(1000, 5))),
        DigitalStorageUnit.pebibyte => Pebibyte(value / 8),
      };

  @override
  toString() => '${super.toString()} Pibit';
}