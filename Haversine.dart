import 'dart:math';

class Haversine {
  static final radius = 6372.8; //Earth's Radius

  static double distanceBetween(
      double startLatitude, startLongitude, endLatitude, endLongitude) {
    return (radius *
            (2 *
                asin(sqrt(pow(
                        sin(_radians(endLatitude - startLatitude) / 2), 2) +
                    pow(sin(_radians(endLongitude - startLongitude) / 2), 2) *
                        cos(_radians(startLatitude)) *
                        cos(_radians(endLatitude)))))) *
        1000;
  }

  static double _radians(double degree) {
    return degree * pi / 180;
  }
}
