import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:eutel_mobile_app/presentations/login_screen/login_display.dart';
import '../presentations/splash_screen/secondSplashDisplay/second_display.dart';
import 'package:eutel_mobile_app/presentations/registration_screen/register_view.dart';
import 'package:eutel_mobile_app/presentations/login_screen/userLogin/login_view.dart';
import 'package:eutel_mobile_app/presentations/onboarding_screen/onboarding_display.dart';

import '../presentations/splash_screen/splash_widet.dart';

class RouterClass {
  static String secondDisplay = 'secondSplashDisplay';
  static String onboardingDisplay = 'onboardingScreen';
  static String login = 'loginScreen';
  static String userLogin = 'userLogin';
  static String registerView = 'registerView';

  static final GoRouter splashScreenRoute = GoRouter(
    routes: <RouteBase>[
      GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const SplashDisplay();
          },
          routes: [
            GoRoute(
              name: secondDisplay,
              path: 'secondSplashDisplay',
              builder: (BuildContext context, GoRouterState state) {
                return const SecondDisplay();
              },
            ),
            GoRoute(
              name: onboardingDisplay,
              path: 'onboardingScreen',
              builder: (BuildContext context, GoRouterState state) {
                return const OnboardingScreen();
              },
            ),
            GoRoute(
              name: login,
              path: 'loginScreen',
              builder: (BuildContext context, GoRouterState state) {
                return const LoginDisplay();
              },
            ),
            GoRoute(
              name: userLogin,
              path: 'userLogin',
              builder: (BuildContext context, GoRouterState state) {
                return const UserLoginView();
              },
            ),
            GoRoute(
              name: registerView,
              path: 'registerView',
              builder: (BuildContext context, GoRouterState state) {
                return const RegisterView();
              },
            ),
          ]),
    ],
  );
}
