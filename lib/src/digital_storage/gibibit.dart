import 'dart:math';

import '../../digital_storage_unit.dart';
import 'bit.dart';
import 'byte.dart';
import 'digital_storage_value.dart';
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
import 'tebibit.dart';
import 'tebibyte.dart';
import 'terabit.dart';
import 'terabyte.dart';

class Gibibit extends DigitalStorageValue {
  Gibibit(double digitalStorage) : super(digitalStorage);

  @override
  DigitalStorageValue to(DigitalStorageUnit unit) =>
      switch(unit) {
        DigitalStorageUnit.bit => Bit(value * pow(1024, 3)),
        DigitalStorageUnit.kilobit => Kilobit(value * pow(1024, 3) / 1000),
        DigitalStorageUnit.kibibit => Kibibit(value * pow(1024, 2)),
        DigitalStorageUnit.megabit => Megabit(value * pow(1024, 3) / pow(1000, 2)),
        DigitalStorageUnit.mebibit => Mebibit(value * 1024),
        DigitalStorageUnit.gigabit => Gigabit(value * pow(1024, 3) / pow(1000, 3)),
        DigitalStorageUnit.gibibit => Gibibit(value),
        DigitalStorageUnit.terabit => Terabit(value * pow(1024, 3) / pow(1000, 4)),
        DigitalStorageUnit.tebibit => Tebibit(value / 1024),
        DigitalStorageUnit.petabit => Petabit(value * pow(1024, 3) / pow(1000, 5)),
        DigitalStorageUnit.pebibit => Pebibit(value / pow(1024, 2)),
        DigitalStorageUnit.byte => Byte(value * pow(1024, 3) / 8),
        DigitalStorageUnit.kilobyte => Kilobyte(value * pow(1024, 3) / (8 * 1000)),
        DigitalStorageUnit.kibibyte => Kibibyte(value * pow(1024, 2) / 8),
        DigitalStorageUnit.megabyte => Megabyte(value * pow(1024, 3) / (8 * pow(1000, 2))),
        DigitalStorageUnit.mebibyte => Mebibyte(value * 1024 / 8),
        DigitalStorageUnit.gigabyte => Gigabyte(value * pow(1024, 3) / (8 * pow(1000, 3))),
        DigitalStorageUnit.gibibyte => Gibibyte(value / 8),
        DigitalStorageUnit.terabyte => Terabyte(value * pow(1024, 3) / (8 * pow(1000, 4))),
        DigitalStorageUnit.tebibyte => Tebibyte(value / (8 * 1024)),
        DigitalStorageUnit.petabyte => Petabyte(value * pow(1024, 3) / (8 * pow(1000, 5))),
        DigitalStorageUnit.pebibyte => Pebibyte(value / (8 * pow(1024, 2))),
      };

  @override
  toString() => '${super.toString()} Gibit';
}