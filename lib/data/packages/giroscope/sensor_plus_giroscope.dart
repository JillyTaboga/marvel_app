import 'dart:async';

import 'package:sensors_plus/sensors_plus.dart';

import 'giroscope.dart';

class SensorPlusGiroscope implements Giroscope {
  @override
  Stream<GiroscopeResponse> getGiroscopeEvents() {
    final stream = gyroscopeEvents.transform<GiroscopeResponse>(
      StreamTransformer.fromHandlers(
        handleData: (data, sink) {
          sink.add(
            GiroscopeResponse(
              x: data.x,
              y: data.y,
              z: data.z,
            ),
          );
        },
        handleDone: (sink) => sink.close(),
      ),
    );
    return stream;
  }
}
