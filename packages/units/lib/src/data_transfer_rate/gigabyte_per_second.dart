import '../../data_transfer_rate_unit.dart';
import 'bit_per_second.dart';
import 'data_transfer_rate_value.dart';
import 'gibibit_per_second.dart';
import 'gigabit_per_second.dart';
import 'kibibit_per_second.dart';
import 'kilobit_per_second.dart';
import 'kilobyte_per_second.dart';
import 'mebibit_per_second.dart';
import 'megabit_per_second.dart';
import 'megabyte_per_second.dart';
import 'tebibit_per_second.dart';
import 'terabit_per_second.dart';
import 'terabyte_per_second.dart';

class GigabytePerSecond extends DataTransferRateValue {
  GigabytePerSecond(double area) : super(area);

  @override
  DataTransferRateValue to(DataTransferRateUnit unit) =>
      switch(unit) {
        DataTransferRateUnit.bitPerSecond => BitPerSecond(value),
        DataTransferRateUnit.kilobitPerSecond => KilobitPerSecond(value),
        DataTransferRateUnit.kilobytePerSecond => KilobytePerSecond(value),
        DataTransferRateUnit.kibibitPerSecond => KibibitPerSecond(value),
        DataTransferRateUnit.megabitPerSecond => MegabitPerSecond(value),
        DataTransferRateUnit.megabytePerSecond => MegabytePerSecond(value),
        DataTransferRateUnit.mebibitPerSecond => MebibitPerSecond(value),
        DataTransferRateUnit.gigabitPerSecond => GigabitPerSecond(value),
        DataTransferRateUnit.gigabytePerSecond => GigabytePerSecond(value),
        DataTransferRateUnit.gibibitPerSecond => GibibitPerSecond(value),
        DataTransferRateUnit.terabitPerSecond => TerabitPerSecond(value),
        DataTransferRateUnit.terabytePerSecond => TerabytePerSecond(value),
        DataTransferRateUnit.tebibitPerSecond => TebibitPerSecond(value),
      };

  @override
  toString() => '${super.toString()} GB/s';
}