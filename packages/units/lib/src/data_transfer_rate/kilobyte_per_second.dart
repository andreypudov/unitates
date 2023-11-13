import '../../data_transfer_rate_unit.dart';
import 'bit_per_second.dart';
import 'data_transfer_rate_value.dart';
import 'gibibit_per_second.dart';
import 'gigabit_per_second.dart';
import 'gigabyte_per_second.dart';
import 'kibibit_per_second.dart';
import 'kilobit_per_second.dart';
import 'mebibit_per_second.dart';
import 'megabit_per_second.dart';
import 'megabyte_per_second.dart';
import 'tebibit_per_second.dart';
import 'terabit_per_second.dart';
import 'terabyte_per_second.dart';

class KilobytePerSecond extends DataTransferRateValue {
  KilobytePerSecond(double area) : super(area);

  @override
  DataTransferRateValue to(DataTransferRateUnit unit) =>
      switch(unit) {
        DataTransferRateUnit.bitPerSecond => BitPerSecond(value * 8000),
        DataTransferRateUnit.kilobitPerSecond => KilobitPerSecond(value * 8),
        DataTransferRateUnit.kilobytePerSecond => KilobytePerSecond(value),
        DataTransferRateUnit.kibibitPerSecond => KibibitPerSecond(value * 7.812),
        DataTransferRateUnit.megabitPerSecond => MegabitPerSecond(value / 125),
        DataTransferRateUnit.megabytePerSecond => MegabytePerSecond(value / 1000),
        DataTransferRateUnit.mebibitPerSecond => MebibitPerSecond(value / 131.1),
        DataTransferRateUnit.gigabitPerSecond => GigabitPerSecond(value / 1.25e+6),
        DataTransferRateUnit.gigabytePerSecond => GigabytePerSecond(value / 1e+6),
        DataTransferRateUnit.gibibitPerSecond => GibibitPerSecond(value / 134200),
        DataTransferRateUnit.terabitPerSecond => TerabitPerSecond(value / 1.25e+8),
        DataTransferRateUnit.terabytePerSecond => TerabytePerSecond(value / 1e+9),
        DataTransferRateUnit.tebibitPerSecond => TebibitPerSecond(value / 1.374e+8),
      };

  @override
  toString() => '${super.toString()} KB/s';
}