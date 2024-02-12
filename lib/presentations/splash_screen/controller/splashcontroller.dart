import 'package:flutter/material.dart';

import '../export.dart';

final isImageFadingProvider = StateProvider<bool>((ref) => false);
final isTimeForAnimationProvider = StateProvider<bool>((ref) => false);
final isAppLogoShowingProvider = StateProvider<bool>((ref) => false);

class SplashController extends StateNotifier<bool> {
  // Constructor
  SplashController(ProviderRef ref) : super(false) {
    delayTimer(ref);
  }

  void delayTimer(ProviderRef ref) {
    Future.delayed(const Duration(seconds: 2), () {
      ref.read(isAppLogoShowingProvider.notifier).state = true;

      ref.read(isImageFadingProvider.notifier).state = true;

      imageFadeInAndOut(ref);
    });
  }

  // imageFadeInAndOut function
  void imageFadeInAndOut(ProviderRef ref) {
    Future.delayed(const Duration(seconds: 1), () {
      ref.read(isImageFadingProvider.notifier).state =
          !ref.read(isImageFadingProvider);

      imageFadeInAndOut(ref);
    });
  }

  void callSecondSplashScreen(BuildContext context) {
    Future.delayed(const Duration(seconds: 9), () {
      context.pushReplacementNamed(RouterClass.secondDisplay);
    });
  }
}
