import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/injection.dart';
import '../../data/packages/giroscope/giroscope.dart';

final gyroCoords = StreamProvider<GiroscopeResponse>((ref) {
  final package = ref.watch(gyroscope);
  return package.getGiroscopeEvents();
});
