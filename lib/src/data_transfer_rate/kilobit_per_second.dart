import 'dart:math';

import '../../data_transfer_rate_unit.dart';
import 'bit_per_second.dart';
import 'data_transfer_rate_value.dart';
import 'gibibit_per_second.dart';
import 'gigabit_per_second.dart';
import 'gigabyte_per_second.dart';
import 'kibibit_per_second.dart';
import 'kilobyte_per_second.dart';
import 'mebibit_per_second.dart';
import 'megabit_per_second.dart';
import 'megabyte_per_second.dart';
import 'tebibit_per_second.dart';
import 'terabit_per_second.dart';
import 'terabyte_per_second.dart';

class KilobitPerSecond extends DataTransferRateValue {
  KilobitPerSecond(double area) : super(area);

  @override
  DataTransferRateValue to(DataTransferRateUnit unit) =>
      switch(unit) {
        DataTransferRateUnit.bitPerSecond => BitPerSecond(value * 1000),
        DataTransferRateUnit.kilobitPerSecond => KilobitPerSecond(value),
        DataTransferRateUnit.kilobytePerSecond => KilobytePerSecond(value / 8),
        DataTransferRateUnit.kibibitPerSecond => KibibitPerSecond(value * 1000 / 1024),
        DataTransferRateUnit.megabitPerSecond => MegabitPerSecond(value / 1000),
        DataTransferRateUnit.megabytePerSecond => MegabytePerSecond(value / (8 * 1000)),
        DataTransferRateUnit.mebibitPerSecond => MebibitPerSecond(value * 1000 / pow(1024, 2)),
        DataTransferRateUnit.gigabitPerSecond => GigabitPerSecond(value / pow(1000, 2)),
        DataTransferRateUnit.gigabytePerSecond => GigabytePerSecond(value / (8 * pow(1000, 2))),
        DataTransferRateUnit.gibibitPerSecond => GibibitPerSecond(value * 1000 / pow(1024, 3)),
        DataTransferRateUnit.terabitPerSecond => TerabitPerSecond(value / pow(1000, 3)),
        DataTransferRateUnit.terabytePerSecond => TerabytePerSecond(value / (8 * pow(1000, 3))),
        DataTransferRateUnit.tebibitPerSecond => TebibitPerSecond(value * 1000 / pow(1024, 4)),
      };

  @override
  toString() => '${super.toString()} kbps';
}