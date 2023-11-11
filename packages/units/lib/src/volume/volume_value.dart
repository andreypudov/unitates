import '../../volume_unit.dart';

abstract class VolumeValue {
  final double value;

  VolumeValue(this.value);

  factory VolumeValue.from(VolumeUnit unit, double value) {
    return switch (unit) {
      VolumeUnit.usLiquidGallon => UsLiquidGallon(value),
      VolumeUnit.usLiquidQuart => UsLiquidQuart(value),
      VolumeUnit.usLiquidPint => UsLiquidPint(value),
      VolumeUnit.usLegalCup => UsLegalCup(value),
      VolumeUnit.usFluidOunce => UsFluidOunce(value),
      VolumeUnit.usTablespoon => UsTablespoon(value),
      VolumeUnit.usTeaspoon => UsTeaspoon(value),
      VolumeUnit.cubicMeter => CubicMeter(value),
      VolumeUnit.liter => Liter(value),
      VolumeUnit.milliliter => Milliliter(value),
      VolumeUnit.imperialGallon => ImperialGallon(value),
      VolumeUnit.imperialQuart => ImperialQuart(value),
      VolumeUnit.imperialPint => ImperialPint(value),
      VolumeUnit.imperialCup => ImperialCup(value),
      VolumeUnit.imperialFluidOunce => ImperialFluidOunce(value),
      VolumeUnit.imperialTablespoon => ImperialTablespoon(value),
      VolumeUnit.imperialTeaspoon => ImperialTeaspoon(value),
      VolumeUnit.cubicFoot => CubicFoot(value),
      VolumeUnit.cubicInch => CubicInch(value),
    };
  }

  VolumeValue to(VolumeUnit unit);
}