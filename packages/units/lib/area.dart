import 'area_unit.dart';
import 'src/area/area_value.dart';

class Area {
  AreaValue value;

  Area(double area, AreaUnit unit):
        value = AreaValue.from(unit, area);

  to(AreaUnit unit) => value.to(unit);

  @override
  toString() => value.toString();
}