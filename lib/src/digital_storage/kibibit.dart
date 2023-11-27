import 'dart:math';

import '../../digital_storage_unit.dart';
import 'bit.dart';
import 'byte.dart';
import 'digital_storage_value.dart';
import 'gibibit.dart';
import 'gibibyte.dart';
import 'gigabit.dart';
import 'gigabyte.dart';
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
class Kibibit extends DigitalStorageValue {
  Kibibit(double digitalStorage) : super(digitalStorage);

  @override
  DigitalStorageValue to(DigitalStorageUnit unit) =>
      switch(unit) {
        DigitalStorageUnit.bit => Bit(value * 1024),
        DigitalStorageUnit.kilobit => Kilobit(value * 1024 / 1000),
        DigitalStorageUnit.kibibit => Kibibit(value),
        DigitalStorageUnit.megabit => Megabit(value * 1024 / pow(1000, 2)),
        DigitalStorageUnit.mebibit => Mebibit(value / 1024),
        DigitalStorageUnit.gigabit => Gigabit(value * 1024 / pow(1000, 3)),
        DigitalStorageUnit.gibibit => Gibibit(value / pow(1024, 2)),
        DigitalStorageUnit.terabit => Terabit(value * 1024 / pow(1000, 4)),
        DigitalStorageUnit.tebibit => Tebibit(value / pow(1024, 3)),
        DigitalStorageUnit.petabit => Petabit(value * 1024 / pow(1000, 5)),
        DigitalStorageUnit.pebibit => Pebibit(value / pow(1024, 4)),
        DigitalStorageUnit.byte => Byte(value * 1024 / 8),
        DigitalStorageUnit.kilobyte => Kilobyte(value * 1024 / (8 * 1000)),
        DigitalStorageUnit.kibibyte => Kibibyte(value / 8),
        DigitalStorageUnit.megabyte => Megabyte(value * 1024 / (8 * pow(1000, 2))),
        DigitalStorageUnit.mebibyte => Mebibyte(value / (8 * 1024)),
        DigitalStorageUnit.gigabyte => Gigabyte(value * 1024 / (8 * pow(1000, 3))),
        DigitalStorageUnit.gibibyte => Gibibyte(value / (8 * pow(1024, 2))),
        DigitalStorageUnit.terabyte => Terabyte(value * 1024 / (8 * pow(1000, 4))),
        DigitalStorageUnit.tebibyte => Tebibyte(value / (8 * pow(1024, 3))),
        DigitalStorageUnit.petabyte => Petabyte(value * 1024 / (8 * pow(1000, 5))),
        DigitalStorageUnit.pebibyte => Pebibyte(value / (8 * pow(1024, 4))),
      };

  @override
  toString() => '${super.toString()} Kibit';
}