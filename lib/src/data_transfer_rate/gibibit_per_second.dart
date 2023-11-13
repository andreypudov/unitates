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
        DataTransferRateUnit.bitPerSecond => BitPerSecond(value * 1.074e+9),
        DataTransferRateUnit.kilobitPerSecond => KilobitPerSecond(value * 1.074e+6),
        DataTransferRateUnit.kilobytePerSecond => KilobytePerSecond(value * 134200),
        DataTransferRateUnit.kibibitPerSecond => KibibitPerSecond(value * 1.049e+6),
        DataTransferRateUnit.megabitPerSecond => MegabitPerSecond(value * 1074),
        DataTransferRateUnit.megabytePerSecond => MegabytePerSecond(value * 134.2),
        DataTransferRateUnit.mebibitPerSecond => MebibitPerSecond(value * 1024),
        DataTransferRateUnit.gigabitPerSecond => GigabitPerSecond(value * 1.074),
        DataTransferRateUnit.gigabytePerSecond => GigabytePerSecond(value / 7.451),
        DataTransferRateUnit.gibibitPerSecond => GibibitPerSecond(value),
        DataTransferRateUnit.terabitPerSecond => TerabitPerSecond(value / 931.3),
        DataTransferRateUnit.terabytePerSecond => TerabytePerSecond(value / 7451),
        DataTransferRateUnit.tebibitPerSecond => TebibitPerSecond(value / 1024),
      };

  @override
  toString() => '${super.toString()} Gibit/s';
}