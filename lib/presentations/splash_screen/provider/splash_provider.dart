import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/splashcontroller.dart';

//first and second splash display provider
final splashProvider = Provider((ref) {
  return SplashController(ref);
});
