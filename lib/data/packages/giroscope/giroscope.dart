abstract class Giroscope {
  Stream<GiroscopeResponse> getGiroscopeEvents();
}

class GiroscopeResponse {
  final double x;
  final double y;
  final double z;
  GiroscopeResponse({
    required this.x,
    required this.y,
    required this.z,
  });

  @override
  String toString() => 'x: $x, y: $y, z: $z';
}
