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
import 'megabyte_per_second.dart';
import 'tebibit_per_second.dart';
import 'terabit_per_second.dart';

class TerabytePerSecond extends DataTransferRateValue {
  TerabytePerSecond(double area) : super(area);

  @override
  DataTransferRateValue to(DataTransferRateUnit unit) =>
      switch(unit) {
        DataTransferRateUnit.bitPerSecond => BitPerSecond(value * (8 * pow(1000, 4))),
        DataTransferRateUnit.kilobitPerSecond => KilobitPerSecond(value * (8 * pow(1000, 3))),
        DataTransferRateUnit.kilobytePerSecond => KilobytePerSecond(value * pow(1000, 3)),
        DataTransferRateUnit.kibibitPerSecond => KibibitPerSecond(value * (8 * pow(1000, 4)) / 1024),
        DataTransferRateUnit.megabitPerSecond => MegabitPerSecond(value * (8 * pow(1000, 2))),
        DataTransferRateUnit.megabytePerSecond => MegabytePerSecond(value * pow(1000, 2)),
        DataTransferRateUnit.mebibitPerSecond => MebibitPerSecond(value * (8 * pow(1000, 4)) / pow(1024, 2)),
        DataTransferRateUnit.gigabitPerSecond => GigabitPerSecond(value * (8 * 1000)),
        DataTransferRateUnit.gigabytePerSecond => GigabytePerSecond(value * 1000),
        DataTransferRateUnit.gibibitPerSecond => GibibitPerSecond(value * (8 * pow(1000, 4)) / pow(1024, 3)),
        DataTransferRateUnit.terabitPerSecond => TerabitPerSecond(value * 8),
        DataTransferRateUnit.terabytePerSecond => TerabytePerSecond(value),
        DataTransferRateUnit.tebibitPerSecond => TebibitPerSecond(value * (8 * pow(1000, 4)) / pow(1024, 4)),
      };

  @override
  toString() => '${super.toString()} TB/s';
}