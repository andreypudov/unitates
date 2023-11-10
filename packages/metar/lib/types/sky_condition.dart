import 'package:metar/types/cloud_amount.dart';

class SkyCondition {
  final CloudAmount cloudAmount;
  final Height verticalVisibility;
  final Height indefiniteCeiling;

  SkyCondition(
      this.cloudAmount,
      this.verticalVisibility,
      this.indefiniteCeiling);
}