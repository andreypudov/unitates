import '../../data_transfer_rate_unit.dart';

abstract class DataTransferRateValue {
  final double value;

  DataTransferRateValue(this.value);

  factory DataTransferRateValue.from(DataTransferRateUnit unit, double value) {
    return switch (unit) {
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
  }

  DataTransferRateValue to(DataTransferRateUnit unit);
}