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
import 'megabyte.dart';
import 'pebibit.dart';
import 'pebibyte.dart';
import 'petabit.dart';
import 'petabyte.dart';
import 'tebibit.dart';
import 'tebibyte.dart';
import 'terabit.dart';
import 'terabyte.dart';

class Megabit extends DigitalStorageValue {
  Megabit(double digitalStorage) : super(digitalStorage);

  @override
  DigitalStorageValue to(DigitalStorageUnit unit) =>
      switch(unit) {
        DigitalStorageUnit.bit => Bit(value * pow(1000, 2)),
        DigitalStorageUnit.kilobit => Kilobit(value * 1000),
        DigitalStorageUnit.kibibit => Kibibit(value * pow(1000, 2) / 1024),
        DigitalStorageUnit.megabit => Megabit(value),
        DigitalStorageUnit.mebibit => Mebibit(value * pow(1000, 2) / pow(1024, 2)),
        DigitalStorageUnit.gigabit => Gigabit(value / 1000),
        DigitalStorageUnit.gibibit => Gibibit(value * pow(1000, 2) / pow(1024, 3)),
        DigitalStorageUnit.terabit => Terabit(value / pow(1000, 2)),
        DigitalStorageUnit.tebibit => Tebibit(value * pow(1000, 2) / pow(1024, 4)),
        DigitalStorageUnit.petabit => Petabit(value / pow(1000, 3)),
        DigitalStorageUnit.pebibit => Pebibit(value * pow(1000, 2) / pow(1024, 5)),
        DigitalStorageUnit.byte => Byte(value * pow(1000, 2) / 8),
        DigitalStorageUnit.kilobyte => Kilobyte(value * 1000 / 8),
        DigitalStorageUnit.kibibyte => Kibibyte(value * pow(1000, 2) / (8 * 1024)),
        DigitalStorageUnit.megabyte => Megabyte(value / 8),
        DigitalStorageUnit.mebibyte => Mebibyte(value * pow(1000, 2) / (8 * pow(1024, 2))),
        DigitalStorageUnit.gigabyte => Gigabyte(value / (8 * 1000)),
        DigitalStorageUnit.gibibyte => Gibibyte(value * pow(1000, 2) / (8 * pow(1024, 3))),
        DigitalStorageUnit.terabyte => Terabyte(value / (8 * pow(1000, 2))),
        DigitalStorageUnit.tebibyte => Tebibyte(value * pow(1000, 2) / (8 * pow(1024, 4))),
        DigitalStorageUnit.petabyte => Petabyte(value / (8 * pow(1000, 3))),
        DigitalStorageUnit.pebibyte => Pebibyte(value * pow(1000, 2) / (8 * pow(1024, 5))),
      };

  @override
  toString() => '${super.toString()} Mbit';
}