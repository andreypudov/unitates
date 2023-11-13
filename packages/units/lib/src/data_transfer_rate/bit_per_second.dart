import '../../data_transfer_rate_unit.dart';
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
import 'terabyte_per_second.dart';

class BitPerSecond extends DataTransferRateValue {
  BitPerSecond(double area) : super(area);

  @override
  DataTransferRateValue to(DataTransferRateUnit unit) =>
      switch(unit) {
        DataTransferRateUnit.bitPerSecond => BitPerSecond(value),
        DataTransferRateUnit.kilobitPerSecond => KilobitPerSecond(value / 1000),
        DataTransferRateUnit.kilobytePerSecond => KilobytePerSecond(value / 8000),
        DataTransferRateUnit.kibibitPerSecond => KibibitPerSecond(value / 1024),
        DataTransferRateUnit.megabitPerSecond => MegabitPerSecond(value / 1e+6),
        DataTransferRateUnit.megabytePerSecond => MegabytePerSecond(value / 8e+6),
        DataTransferRateUnit.mebibitPerSecond => MebibitPerSecond(value / 1.049e+6),
        DataTransferRateUnit.gigabitPerSecond => GigabitPerSecond(value / 1e+9),
        DataTransferRateUnit.gigabytePerSecond => GigabytePerSecond(value / 8e+9),
        DataTransferRateUnit.gibibitPerSecond => GibibitPerSecond(value / 1.074e+9),
        DataTransferRateUnit.terabitPerSecond => TerabitPerSecond(value / 1e+12),
        DataTransferRateUnit.terabytePerSecond => TerabytePerSecond(value / 8e+12),
        DataTransferRateUnit.tebibitPerSecond => TebibitPerSecond(value / 1.1e+12),
      };

  @override
  toString() => '${super.toString()} bps';
}