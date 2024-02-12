import 'package:eutel_mobile_app/presentations/registration_screen/export.dart';
import 'package:eutel_mobile_app/widget/custom_image_view.dart';

import '../../../../core/utils/image_constant.dart';
import '../../../../widget/buttonwidget.dart';
import '../../../../widget/custom_elevated_button.dart';

class View1 extends StatefulWidget {
  const View1({super.key});

  @override
  State<View1> createState() => _View1State();
}

class _View1State extends State<View1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 100.h,
        width: double.infinity,
        // color: Colors.green,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                  text: welcomeMessage,
                  style: AppTextStyle.normalFont().copyWith(
                    fontSize: 16.sp,
                  ),
                  children: [
                    TextSpan(
                        text: middleTextRich,
                        style: AppTextStyle.boldFont().copyWith(
                            color: AppColors.backGroundGreenColor,
                            fontSize: 16.sp)),
                    TextSpan(
                      text: welcomeMessageComplete,
                      style: AppTextStyle.normalFont().copyWith(
                        fontSize: 16.sp,
                      ),
                    )
                  ])),
          SizedBox(height: 2.h),
          Text(lastNameLabel,
              style: AppTextStyle.boldFont().copyWith(fontSize: 16.sp)),
          // last name input
          InputWidget(
            controller: GlobalControls.lastName,
            hintText: lastNameHintText,
            obscurePassword: false,
            fillColors: AppColors.inputGrayColor,
          ),
          SizedBox(height: 2.h),
          // middle name input
          Text(middleNameLabel,
              style: AppTextStyle.boldFont().copyWith(fontSize: 16.sp)),
          InputWidget(
            controller: GlobalControls.middleName,
            hintText: middleNameHint,
            obscurePassword: false,
            fillColors: AppColors.inputGrayColor,
          ),

          // first name input
          SizedBox(height: 2.h),
          Text(firstNameLabel,
              style: AppTextStyle.boldFont().copyWith(fontSize: 16.sp)),
          InputWidget(
            controller: GlobalControls.firstName,
            hintText: firstNameHint,
            obscurePassword: false,
            fillColors: AppColors.inputGrayColor,
          ),
          SizedBox(height: 10.h),
          CustomElevatedButton(
            text: "Next",
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(left: 4.w, right: 4.w),
            child: Row(
              children: [
                const Expanded(
                    flex: 2,
                    child: Divider(
                      color: Colors.grey,
                    )),
                Expanded(
                    flex: 6,
                    child: Center(
                        child: Text(
                      dividerText,
                      style: AppTextStyle.boldFont().copyWith(
                          fontSize: 16.sp, color: AppColors.blackColor),
                    ))),
                const Expanded(
                    flex: 2,
                    child: Divider(
                      color: Colors.grey,
                    ))
              ],
            ),
          ),
          SizedBox(height: 10),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                              color: AppColors.inputGrayColor)),
                      child: Container(
                        height: 30,
                        width: 33,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Image.asset(
                          ImageConstant.apple,
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                                color: AppColors.inputGrayColor)),
                        child: Container(
                          height: 30,
                          width: 33,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Image.asset(
                            ImageConstant.google,
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                              color: AppColors.inputGrayColor)),
                      child: Container(
                        height: 30,
                        width: 33,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Image.asset(
                          ImageConstant.facebook,
                          height: 30,
                          width: 30,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      context.goNamed(RouterClass.login);
                      RegisterControls.resetAllStackProviders();
                    });
                  },
                  child: Text.rich(TextSpan(
                      text: haveAnAccount,
                      style: AppTextStyle.normalFont().copyWith(
                          fontSize: 18.sp, color: AppColors.blackColor),
                      children: [
                        TextSpan(
                          text: login,
                          style: AppTextStyle.boldFont().copyWith(
                              fontSize: 18.sp,
                              color: AppColors.backGroundGreenColor),
                        )
                      ])),
                ),
              ])
        ]),
      ),
    );
  }

  @override
  void dispose() {
    GlobalControls.lastName.text = '';
    GlobalControls.firstName.text = '';
    GlobalControls.middleName.text = '';
    super.dispose();
  }
}
