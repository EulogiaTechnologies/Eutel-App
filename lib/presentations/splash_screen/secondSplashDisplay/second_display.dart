import '../../../widget/custom_elevated_button.dart';
import '../export.dart';
import 'package:flutter/material.dart';

class SecondDisplay extends StatelessWidget {
  const SecondDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
          backgroundColor: AppColors.backGroundGreenColor,
          body: Padding(
            padding:
                EdgeInsets.only(left: 6.w, right: 6.w, top: 8.h, bottom: 8.h),
            child: Column(children: [
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(secondDisplayText,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.boldFontItalic().copyWith(
                          color: AppColors.appWhiteColor, fontSize: 21.sp)),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      width: 180,
                      child: CustomElevatedButton(
                        text: "Next",
                        backgroundColor: AppColors.appWhiteColor,
                        buttonTextStyle:
                            AppTextStyle.boldFont().copyWith(fontSize: 20),
                        onPressed: () {
                          context.pushReplacementNamed(
                              RouterClass.onboardingDisplay);
                        },
                      ),
                    ),
                  )),
            ]),
          ),
        ),
      ),
    );
  }
}
