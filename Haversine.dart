import 'dart:math';

class Haversine {
  static final R = 6372.8; //Earth's Radius

  static double distanceBetween(
      double startLatitude, startLongitude, endLatitude, endLongitude) {
    return (R *
            (2 *
                asin(sqrt(pow(
                        sin(_mRadians(endLatitude - startLatitude) / 2), 2) +
                    pow(sin(_mRadians(endLongitude - startLongitude) / 2), 2) *
                        cos(_mRadians(startLatitude)) *
                        cos(_mRadians(endLatitude)))))) *
        1000;
  }

  static double _mRadians(double degree) {
    return degree * pi / 180;
  }
}
