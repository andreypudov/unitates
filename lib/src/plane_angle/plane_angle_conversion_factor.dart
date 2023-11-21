import 'dart:math';

class PlaneAngleConversionFactor {
  static const double arcsecondToRadian        = pi / (180 * 3600);
  static const double degreeToGradian          = 200 / 180;
  static const double degreeToRadian           = pi / 180;
  static const double gradianToDegree          = 180 / 200;
  static const double gradianToRadian          = pi / 200;
  static const double milliradianToArcsecond   = (3600 * 180) / (1000 * pi);
  static const double milliradianToDegree      = 180 / (1000 * pi);
  static const double milliradianToGradian     = 200 / (1000 * pi);
  static const double milliradianToMinuteOfArc = (180 * 60) / (1000 * pi);
  static const double minuteOfArcToRadian      = pi / (180 * 60);
  static const double radianToArcsecond        = (180 * 3600) / pi;
  static const double radianToDegree           = 180 / pi;
  static const double radianToGradian          = 200 / pi;
  static const double radianToMinuteOfArc      = (180 * 60) / pi;
}

