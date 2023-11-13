import 'data_transfer_rate_unit.dart';
import 'src/data_transfer_rate/data_transfer_rate_value.dart';

class DataTransferRate {
  DataTransferRateValue value;

  DataTransferRate(double dataTransferRate, DataTransferRateUnit unit):
        value = DataTransferRateValue.from(unit, dataTransferRate);

  to(DataTransferRateUnit unit) => value.to(unit);

  @override
  toString() => value.toString();
}