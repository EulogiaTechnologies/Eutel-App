// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:eutel_mobile_app/core/utils/image_constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'export.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../widget/custom_image_view.dart';
import 'provider/onboarding_provider.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  late Timer timer;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var onboardingPro = ref.watch(onboardingProvider);
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.appWhiteColor,
          body: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                  top: -38,
                  left: -90,
                  child: Container(
                      width: 200,
                      height: 200,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 4),
                              blurRadius: 20)
                        ],
                        color: Color.fromRGBO(15, 255, 97, 1),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(200, 200)),
                      ))),
              Positioned(
                top: 160,
                child: SizedBox(
                  height: 350,
                  width: 240,
                  child: PageView.builder(
                    controller: onboardingPro.pageController,
                    itemCount: onboardingPro.onboardingModels.length,
                    onPageChanged: (i) {
                      onboardingPro.changePage(i);
                      //    ref.read(OnboardingIndexNotifier).updateIndex();
                    },
                    itemBuilder: (context, index) {
                      var onboarding = onboardingPro.onboardingModels[index];
                      return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: onboarding.imagePath,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              onboarding.title.toString(),
                              style: AppTextStyle.boldFont()
                                  .copyWith(fontSize: 15),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              onboarding.description.toString(),
                              textAlign: TextAlign.center,
                              style: AppTextStyle.normalFont()
                                  .copyWith(fontSize: 15),
                            ),
                          ]);
                    },
                  ),
                ),
              ),
              Positioned(
                bottom: -55,
                child: Container(
                  height: 400,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.onboardingRectangleImage,
                          ),
                          fit: BoxFit.cover)),
                  // child: CustomImageView(
                  //   imagePath: ImageConstant.onboardingRectangleImage,
                  // ),

                  child: Center(
                    child: SizedBox(
                      height: 5,
                      child: AnimatedSmoothIndicator(
                        effect: ExpandingDotsEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          dotColor: AppColors.appWhiteColor,
                        ),
                        activeIndex: onboardingPro.currentIndex,
                        count: onboardingPro.onboardingModels.length,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OnboadingBotton(
                        onPressed: () {
                          context.replaceNamed(RouterClass.registerView);
                        },
                        text: "Skip",
                        transperent: true,
                      ),
                      const SizedBox(width: 70),
                      OnboadingBotton(
                        onPressed: () {
                          onboardingPro.pushtoNext(context);
                        },
                        text: "Next",
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}

class OnboadingBotton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool transperent;
  const OnboadingBotton({
    required this.onPressed,
    required this.text,
    this.transperent = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
            color: transperent ? Colors.transparent : AppColors.appWhiteColor,
            borderRadius: BorderRadius.circular(15),
            border: transperent
                ? Border.all(
                    color: AppColors.appWhiteColor,
                  )
                : null),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: AppTextStyle.normalFont().copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                transperent
                    ? const SizedBox()
                    : const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(Icons.arrow_forward_rounded),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Iphone14promax3Widget extends StatefulWidget {
  const Iphone14promax3Widget({super.key});

  @override
  _Iphone14promax3WidgetState createState() => _Iphone14promax3WidgetState();
}

class _Iphone14promax3WidgetState extends State<Iphone14promax3Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 430,
        height: 932,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 420,
              left: 50,
              child: Container(
                decoration: const BoxDecoration(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Now easier to pay bills online!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(42, 42, 42, 1),
                          fontFamily: 'Urbanist',
                          fontSize: 20,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 684,
              left: 187,
              child: Container(
                decoration: const BoxDecoration(),
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        width: 32,
                        height: 8,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Color.fromRGBO(29, 29, 27, 1),
                        )),
                    const SizedBox(width: 6),
                    Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(8, 8)),
                        )),
                    const SizedBox(width: 6),
                    Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(8, 8)),
                        )),
                  ],
                ),
              )),
          Positioned(
              top: 759,
              left: 31,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  border: Border.all(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    width: 2,
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Skip ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Urbanist',
                          fontSize: 14,
                          letterSpacing: 0.20000000298023224,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                          ),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 759,
              left: 241,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text(
                      'Next ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Urbanist',
                          fontSize: 14,
                          letterSpacing: 0.20000000298023224,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                          ),
                    ),
                    const SizedBox(width: 5),
                    Transform.rotate(
                        angle: -3.975693351829396e-16 * (math.pi / 180),
                        child: SvgPicture.asset('assets/images/arrow1.svg',
                            semanticsLabel: 'arrow1')),
                  ],
                ),
              )),
          Positioned(
              top: 159,
              left: 90,
              child: Container(
                  width: 250,
                  height: 250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/Plaincreditcardunscreen2.png'),
                        fit: BoxFit.fitWidth),
                  ))),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(),
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 0),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(),
                        ],
                      ),
                    ),
                    const SizedBox(width: 0),
                    Container(
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(),
                        ],
                      ),
                    ),
                    const SizedBox(width: 0),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                SvgPicture.asset(
                                    'assets/images/iconmobilesignal.svg',
                                    semanticsLabel: 'iconmobilesignal'),
                                const SizedBox(width: 8),
                                const SizedBox(),
                                const SizedBox(width: 8),
                                const SizedBox(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ]));
  }
}
