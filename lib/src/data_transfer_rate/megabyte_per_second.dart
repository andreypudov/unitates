import 'dart:math';

import '../../data_transfer_rate_unit.dart';
import 'bit_per_second.dart';
import 'data_transfer_rate_value.dart';
import 'gibibit_per_second.dart';
import 'gigabit_per_second.dart';
import 'gigabyte_per_second.dart';
import 'kibibit_per_second.dart';
import 'kilobit_per_second.dart';
import 'kilobyte_per_second.dart';
import 'mebibit_per_second.dart';
import 'megabit_per_second.dart';
import 'tebibit_per_second.dart';
import 'terabit_per_second.dart';
import 'terabyte_per_second.dart';

class MegabytePerSecond extends DataTransferRateValue {
  MegabytePerSecond(double area) : super(area);

  @override
  DataTransferRateValue to(DataTransferRateUnit unit) =>
      switch(unit) {
        DataTransferRateUnit.bitPerSecond => BitPerSecond(value * (8 * pow(1000, 2))),
        DataTransferRateUnit.kilobitPerSecond => KilobitPerSecond(value * (8 * 1000)),
        DataTransferRateUnit.kilobytePerSecond => KilobytePerSecond(value * 1000),
        DataTransferRateUnit.kibibitPerSecond => KibibitPerSecond(value * (8 * pow(1000, 2)) / 1024),
        DataTransferRateUnit.megabitPerSecond => MegabitPerSecond(value * 8),
        DataTransferRateUnit.megabytePerSecond => MegabytePerSecond(value),
        DataTransferRateUnit.mebibitPerSecond => MebibitPerSecond(value * (8 * pow(1000, 2)) / pow(1024, 2)),
        DataTransferRateUnit.gigabitPerSecond => GigabitPerSecond(value * (8 / 1000)),
        DataTransferRateUnit.gigabytePerSecond => GigabytePerSecond(value / 1000),
        DataTransferRateUnit.gibibitPerSecond => GibibitPerSecond(value * (8 * pow(1000, 2) / pow(1024, 3))),
        DataTransferRateUnit.terabitPerSecond => TerabitPerSecond(value * (8 / pow(1000, 2))),
        DataTransferRateUnit.terabytePerSecond => TerabytePerSecond(value / pow(1000, 2)),
        DataTransferRateUnit.tebibitPerSecond => TebibitPerSecond(value * (8 * pow(1000, 2) / pow(1024, 4))),
      };

  @override
  toString() => '${super.toString()} MB/s';
}