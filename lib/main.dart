import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eutel_mobile_app/app_route/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return ProviderScope(
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: RouterClass.splashScreenRoute,
          ),
          //   child: MaterialApp(home: Iphone14promax7Widget()),
        );
      },
    );
  }
}
