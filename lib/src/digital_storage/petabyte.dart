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
import 'pebibit.dart';
import 'pebibyte.dart';
import 'petabit.dart';
import 'tebibit.dart';
import 'tebibyte.dart';
import 'terabit.dart';
import 'terabyte.dart';

class Petabyte extends DigitalStorageValue {
  Petabyte(double digitalStorage) : super(digitalStorage);

  @override
  DigitalStorageValue to(DigitalStorageUnit unit) =>
      switch(unit) {
        DigitalStorageUnit.bit => Bit(value * (8 * pow(1000, 5))),
        DigitalStorageUnit.kilobit => Kilobit(value * (8 * pow(1000, 4))),
        DigitalStorageUnit.kibibit => Kibibit(value * (8 * pow(1000, 5)) / 1024),
        DigitalStorageUnit.megabit => Megabit(value * (8 * pow(1000, 3))),
        DigitalStorageUnit.mebibit => Mebibit(value * (8 * pow(1000, 5)) / pow(1024, 2)),
        DigitalStorageUnit.gigabit => Gigabit(value * (8 * pow(1000, 2))),
        DigitalStorageUnit.gibibit => Gibibit(value * (8 * pow(1000, 5)) / pow(1024, 3)),
        DigitalStorageUnit.terabit => Terabit(value * (8 * 1000)),
        DigitalStorageUnit.tebibit => Tebibit(value * (8 * pow(1000, 5)) / pow(1024, 4)),
        DigitalStorageUnit.petabit => Petabit(value * 8),
        DigitalStorageUnit.pebibit => Pebibit(value * (8 * pow(1000, 5)) / pow(1024, 5)),
        DigitalStorageUnit.byte => Byte(value * pow(1000, 5)),
        DigitalStorageUnit.kilobyte => Kilobyte(value * pow(1000, 4)),
        DigitalStorageUnit.kibibyte => Kibibyte(value * pow(1000, 5) / 1024),
        DigitalStorageUnit.megabyte => Megabyte(value * pow(1000, 3)),
        DigitalStorageUnit.mebibyte => Mebibyte(value * pow(1000, 5) / pow(1024, 2)),
        DigitalStorageUnit.gigabyte => Gigabyte(value * pow(1000, 2)),
        DigitalStorageUnit.gibibyte => Gibibyte(value * pow(1000, 5) / pow(1024, 3)),
        DigitalStorageUnit.terabyte => Terabyte(value * 1000),
        DigitalStorageUnit.tebibyte => Tebibyte(value * pow(1000, 5) / pow(1024, 4)),
        DigitalStorageUnit.petabyte => Petabyte(value),
        DigitalStorageUnit.pebibyte => Pebibyte(value * pow(1000, 5) / pow(1024, 5)),
      };

  @override
  toString() => '${super.toString()} PB';
}