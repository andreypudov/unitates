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
import 'terabit_per_second.dart';
import 'terabyte_per_second.dart';

class TerabitPerSecond extends DataTransferRateValue {
  TerabitPerSecond(double area) : super(area);

  @override
  DataTransferRateValue to(DataTransferRateUnit unit) =>
      switch(unit) {
        DataTransferRateUnit.bitPerSecond => BitPerSecond(value * pow(1000, 4)),
        DataTransferRateUnit.kilobitPerSecond => KilobitPerSecond(value * pow(1000, 3)),
        DataTransferRateUnit.kilobytePerSecond => KilobytePerSecond(value * pow(1000, 3) / 8),
        DataTransferRateUnit.kibibitPerSecond => KibibitPerSecond(value * pow(1000, 4) / 1024),
        DataTransferRateUnit.megabitPerSecond => MegabitPerSecond(value * pow(1000, 2)),
        DataTransferRateUnit.megabytePerSecond => MegabytePerSecond(value * pow(1000, 2) / 8),
        DataTransferRateUnit.mebibitPerSecond => MebibitPerSecond(value * pow(1000, 4) / pow(1024, 2)),
        DataTransferRateUnit.gigabitPerSecond => GigabitPerSecond(value * 1000),
        DataTransferRateUnit.gigabytePerSecond => GigabytePerSecond(value * 1000 / 8),
        DataTransferRateUnit.gibibitPerSecond => GibibitPerSecond(value * pow(1000, 4) / pow(1024, 3)),
        DataTransferRateUnit.terabitPerSecond => TerabitPerSecond(value),
        DataTransferRateUnit.terabytePerSecond => TerabytePerSecond(value / 8),
        DataTransferRateUnit.tebibitPerSecond => TebibitPerSecond(value * pow(1000, 4) / pow(1024, 4)),
      };

  @override
  toString() => '${super.toString()} Tbit/s';
}