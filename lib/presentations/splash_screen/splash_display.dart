// import 'package:eutel_mobile_app/core/utils/image_constant.dart';

// import 'export.dart';
// import 'package:flutter/material.dart';

// class SplashDisplay extends StatefulWidget {
//   const SplashDisplay({super.key});

//   @override
//   State<SplashDisplay> createState() => _SplashDisplayState();
// }

// class _SplashDisplayState extends State<SplashDisplay> {
//   @override
//   void initState() {
//     super.initState();
//     // delayTimer();
//     // callSecondSplashScreen(context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Consumer(builder: (context, ref, _) {
//       providerRef = ref;
//       var isImageAnimationFading = providerRef.watch(isImageFading) == true;
//       var isAppLogoShoping = providerRef.watch(isAppLogoShowing) == true;
//       var isTransitionRunning = providerRef.watch(isTimeForAnimation) == true;
//       return SafeArea(
//           child: Scaffold(
//         backgroundColor: AppColors.backGroundGreenColor,
//         body: Column(
//           children: [
//             // TextField(
//             //   controller: TextEditingController(),
//             // )
//             Expanded(
//                 flex: 2,
//                 child: Align(
//                   alignment: Alignment.topLeft,
//                   child: AnimatedContainer(
//                     duration: const Duration(milliseconds: 600),
//                     width: isTransitionRunning ? 30.w : 0,
//                     height: isTransitionRunning ? 15.h : 0,
//                     decoration: BoxDecoration(
//                       color: AppColors.blackColor,
//                       border: Border(
//                         bottom: BorderSide(
//                             color: AppColors.appWhiteColor,
//                             width: isTransitionRunning ? 20.sp : 0),
//                         right: BorderSide(
//                             color: AppColors.appWhiteColor,
//                             width: isTransitionRunning ? 20.sp : 0),
//                       ),
//                       borderRadius: BorderRadius.only(
//                         bottomRight:
//                             Radius.circular(isTransitionRunning ? 50.sp : 0),
//                       ),
//                     ),
//                   ),
//                 )),
//             Expanded(
//                 flex: isAppLogoShoping ? 4 : 0,
//                 child: isAppLogoShoping
//                     ? Stack(
//                         alignment: Alignment.center,
//                         children: [
//                           Image.asset(ImageConstant.splashLogoImage),
//                           AnimatedOpacity(
//                             opacity: isImageAnimationFading ? 0.4 : 1.0,
//                             duration: const Duration(milliseconds: 900),
//                             curve: Curves.easeInOut,
//                             child:
//                                 Image.asset(ImageConstant.splashLogoAnimation),
//                           )
//                         ],
//                       )
//                     : const SizedBox()),
//             Expanded(
//               flex: isTransitionRunning ? 2 : 6,
//               child: isTransitionRunning
//                   ? Center(
//                       child: SpinKitCircle(
//                         color: AppColors.appWhiteColor,
//                         size: 40.sp,
//                       ),
//                     )
//                   : const SizedBox(),
//             ),
//             Expanded(
//                 flex: 2,
//                 child: Align(
//                   alignment: Alignment.bottomRight,
//                   child: AnimatedContainer(
//                     duration: const Duration(milliseconds: 600),
//                     width: isTransitionRunning ? 30.w : 0,
//                     height: isTransitionRunning ? 15.h : 0,
//                     decoration: BoxDecoration(
//                       color: AppColors.blackColor,
//                       border: Border(
//                         top: BorderSide(
//                             color: AppColors.appWhiteColor,
//                             width: isTransitionRunning ? 20.sp : 0),
//                         left: BorderSide(
//                             color: AppColors.appWhiteColor,
//                             width: isTransitionRunning ? 20.sp : 0),
//                       ),
//                       borderRadius: BorderRadius.only(
//                         topLeft:
//                             Radius.circular(isTransitionRunning ? 50.sp : 0),
//                       ),
//                     ),
//                   ),
//                 ))
//           ],
//         ),
//       ));
//     });
//   }
// }
