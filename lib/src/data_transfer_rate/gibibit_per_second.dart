import 'dart:math';

import '../../data_transfer_rate_unit.dart';
import 'bit_per_second.dart';
import 'data_transfer_rate_value.dart';
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
import 'terabyte_per_second.dart';


class GibibitPerSecond extends DataTransferRateValue {
  GibibitPerSecond(double area) : super(area);

  @override
  DataTransferRateValue to(DataTransferRateUnit unit) =>
      switch(unit) {
        DataTransferRateUnit.bitPerSecond => BitPerSecond(value * pow(1024, 3)),
        DataTransferRateUnit.kilobitPerSecond => KilobitPerSecond(value * pow(1024, 3) / 1000),
        DataTransferRateUnit.kilobytePerSecond => KilobytePerSecond(value * pow(1024, 3) / (8 * 1000)),
        DataTransferRateUnit.kibibitPerSecond => KibibitPerSecond(value * pow(1024, 2)),
        DataTransferRateUnit.megabitPerSecond => MegabitPerSecond(value * pow(1024, 3) / pow(1000, 2)),
        DataTransferRateUnit.megabytePerSecond => MegabytePerSecond(value * pow(1024, 3) / (8 * pow(1000, 2))),
        DataTransferRateUnit.mebibitPerSecond => MebibitPerSecond(value * 1024),
        DataTransferRateUnit.gigabitPerSecond => GigabitPerSecond(value * pow(1024, 3) / pow(1000, 3)),
        DataTransferRateUnit.gigabytePerSecond => GigabytePerSecond(value * pow(1024, 3) / (8 * pow(1000, 3))),
        DataTransferRateUnit.gibibitPerSecond => GibibitPerSecond(value),
        DataTransferRateUnit.terabitPerSecond => TerabitPerSecond(value * pow(1024, 3) / pow(1000, 4)),
        DataTransferRateUnit.terabytePerSecond => TerabytePerSecond(value * pow(1024, 3) / (8 * pow(1000, 4))),
        DataTransferRateUnit.tebibitPerSecond => TebibitPerSecond(value / 1024),
      };

  @override
  toString() => '${super.toString()} Gibit/s';
}