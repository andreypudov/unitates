library metar;

import 'package:metar/types/report_type.dart';
import 'package:metar/types/report_modifier.dart';
import 'package:metar/types/weather_phenomena.dart';
import 'package:metar/types/sky_condition.dart';

class Metar {
  final ReportType reportType;
  final String stationIdentifier;
  final DateTime dateTime;
  final ReportModifier reportModifier;
  final Length visibility;
  final Length runwayVisualRange;
  final WeatherPhenomena weatherPhenomena;
  final SkyCondition skyCondition;
  final int altimeter;

  Metar(
      this.reportType,
      this.stationIdentifier,
      this.dateTime,
      this.reportModifier,
      this.visibility,
      this.runwayVisualRange,
      this.weatherPhenomena,
      this.skyCondition,
      this.altimeter);
}
