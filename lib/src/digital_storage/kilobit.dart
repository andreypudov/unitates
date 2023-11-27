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

class Kilobit extends DigitalStorageValue {
  Kilobit(double digitalStorage) : super(digitalStorage);

  @override
  DigitalStorageValue to(DigitalStorageUnit unit) =>
      switch(unit) {
        DigitalStorageUnit.bit => Bit(value * 1000),
        DigitalStorageUnit.kilobit => Kilobit(value),
        DigitalStorageUnit.kibibit => Kibibit(value * 1000 / 1024),
        DigitalStorageUnit.megabit => Megabit(value / 1000),
        DigitalStorageUnit.mebibit => Mebibit(value * 1000 / pow(1024, 2)),
        DigitalStorageUnit.gigabit => Gigabit(value / pow(1000, 2)),
        DigitalStorageUnit.gibibit => Gibibit(value * 1000 / pow(1024, 3)),
        DigitalStorageUnit.terabit => Terabit(value / pow(1000, 3)),
        DigitalStorageUnit.tebibit => Tebibit(value * 1000 / pow(1024, 4)),
        DigitalStorageUnit.petabit => Petabit(value / pow(1000, 4)),
        DigitalStorageUnit.pebibit => Pebibit(value * 1000 / pow(1024, 5)),
        DigitalStorageUnit.byte => Byte(value * 1000 / 8),
        DigitalStorageUnit.kilobyte => Kilobyte(value / 8),
        DigitalStorageUnit.kibibyte => Kibibyte(value * 1000 / (8 * 1024)),
        DigitalStorageUnit.megabyte => Megabyte(value / (8 * 1000)),
        DigitalStorageUnit.mebibyte => Mebibyte(value * 1000 / (8 * pow(1024, 2))),
        DigitalStorageUnit.gigabyte => Gigabyte(value / (8 * pow(1000, 2))),
        DigitalStorageUnit.gibibyte => Gibibyte(value * 1000 / (8 * pow(1024, 3))),
        DigitalStorageUnit.terabyte => Terabyte(value / (8 * pow(1000, 3))),
        DigitalStorageUnit.tebibyte => Tebibyte(value * 1000 / (8 * pow(1024, 4))),
        DigitalStorageUnit.petabyte => Petabyte(value / (8 * pow(1000, 4))),
        DigitalStorageUnit.pebibyte => Pebibyte(value * 1000 / (8 * pow(1024, 5))),
      };

  @override
  toString() => '${super.toString()} kbit';
}