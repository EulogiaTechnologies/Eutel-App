// ignore_for_file: camel_case_types

import 'package:eutel_mobile_app/presentations/onboarding_screen/export.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../../core/utils/image_constant.dart';
import '../../widget/custom_image_view.dart';

class SplashDisplay extends ConsumerStatefulWidget {
  const SplashDisplay({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashDisplayState();
}

class _SplashDisplayState extends ConsumerState<SplashDisplay> {
  @override
  Widget build(BuildContext context) {
    var splashProvide = ref.watch(splashProvider);
    splashProvide.callSecondSplashScreen(context);
    //splashProvider.delayTimer(ref);

    var isAppLogoShowing = ref.watch(isAppLogoShowingProvider);

    return Scaffold(
      body: Container(
          width: 430,
          height: 932,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: AppColors.backGroundGreenColor),
          child: Stack(children: [
            const _headWirte(),
            const _bottomBlack(),
            isAppLogoShowing
                ? const ApplogoShow()
                : Center(
                    child: SpinKitCircle(
                      color: AppColors.appWhiteColor,
                      size: 30.sp,
                    ),
                  )

            //,
          ])),
    );
  }
}

class ApplogoShow extends ConsumerWidget {
  const ApplogoShow({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isImageAnimationFading = ref.watch(isImageFadingProvider);
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(imagePath: ImageConstant.splashLogoImage),
              AnimatedOpacity(
                opacity: isImageAnimationFading ? 0.4 : 1.0,
                duration: const Duration(milliseconds: 700),
                curve: Curves.easeInOut,
                child: CustomImageView(
                    imagePath: ImageConstant.splashLogoAnimation),
              )
            ],
          ),
          Expanded(
              child: Center(
            child: SpinKitCircle(
              color: AppColors.appWhiteColor,
              size: 30.sp,
            ),
          )),
        ],
      ),
    );
  }
}

class _bottomBlack extends StatelessWidget {
  const _bottomBlack();

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: -120,
        right: -100,
        child: Container(
          width: 250,
          height: 250,
          decoration: const BoxDecoration(),
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Stack(
            children: <Widget>[
              Container(
                  width: 250,
                  height: 250,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 200)
                    ],
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.elliptical(250, 250)),
                  )),
              const SizedBox(width: 10),
              Align(
                alignment: Alignment.center,
                child: Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 4),
                            blurRadius: 200)
                      ],
                      color: Color.fromRGBO(0, 0, 0, 1),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(200, 200)),
                    )),
              ),
            ],
          ),
        ));
  }
}

class _headWirte extends StatelessWidget {
  const _headWirte();

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: -72,
        left: -38,
        child: Transform.rotate(
          angle: 5 * (math.pi / 180),
          child: Container(
              width: 150,
              height: 195.75787353515625,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 20)
                ],
                color: Color.fromRGBO(255, 255, 255, 1),
              )),
        ));
  }
}
