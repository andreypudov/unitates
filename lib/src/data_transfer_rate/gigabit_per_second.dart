import 'dart:math';

import '../../data_transfer_rate_unit.dart';
import 'bit_per_second.dart';
import 'data_transfer_rate_value.dart';
import 'gibibit_per_second.dart';
import 'gigabyte_per_second.dart';
import 'kibibit_per_second.dart';
import 'kilobit_per_second.dart';
import 'kilobyte_per_second.dart';
import 'mebibit_per_second.dart';
import 'megabit_per_second.dart';
import 'megabyte_per_second.dart';
import 'tebibit_per_second.dart';
import 'terabit_per_second.dart';
import 'terabyte_per_second.dart';

class GigabitPerSecond extends DataTransferRateValue {
  GigabitPerSecond(double area) : super(area);

  @override
  DataTransferRateValue to(DataTransferRateUnit unit) =>
      switch(unit) {
        DataTransferRateUnit.bitPerSecond => BitPerSecond(value * pow(1000, 3)),
        DataTransferRateUnit.kilobitPerSecond => KilobitPerSecond(value * pow(1000, 2)),
        DataTransferRateUnit.kilobytePerSecond => KilobytePerSecond(value * pow(1000, 2) / 8),
        DataTransferRateUnit.kibibitPerSecond => KibibitPerSecond(value * pow(1000, 3) / 1024),
        DataTransferRateUnit.megabitPerSecond => MegabitPerSecond(value * 1000),
        DataTransferRateUnit.megabytePerSecond => MegabytePerSecond(value * 1000 / 8),
        DataTransferRateUnit.mebibitPerSecond => MebibitPerSecond(value * pow(1000, 3) / pow(1024, 2)),
        DataTransferRateUnit.gigabitPerSecond => GigabitPerSecond(value),
        DataTransferRateUnit.gigabytePerSecond => GigabytePerSecond(value / 8),
        DataTransferRateUnit.gibibitPerSecond => GibibitPerSecond(value * pow(1000, 3) / pow(1024, 3)),
        DataTransferRateUnit.terabitPerSecond => TerabitPerSecond(value / 1000),
        DataTransferRateUnit.terabytePerSecond => TerabytePerSecond(value / (8 * 1000)),
        DataTransferRateUnit.tebibitPerSecond => TebibitPerSecond(value * pow(1000, 3) / pow(1024, 4)),
      };

  @override
  toString() => '${super.toString()} Gbit/s';
}