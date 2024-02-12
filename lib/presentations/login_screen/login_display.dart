import '../../core/utils/image_constant.dart';
import '../../widget/custom_elevated_button.dart';
import 'export.dart';

class LoginDisplay extends StatelessWidget {
  const LoginDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: WillPopScope(
      onWillPop: () async {
        context.goNamed(RouterClass.onboardingDisplay);
        return false;
      },
      child: Scaffold(
        backgroundColor: AppColors.appWhiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.appWhiteColor,
          leading: IconButton(
              onPressed: () {
                context.goNamed(RouterClass.onboardingDisplay);
              },
              icon: Icon(
                Icons.arrow_back_rounded,
                size: 23.sp,
                color: AppColors.blackColor,
              )),
        ),
        body: SizedBox(
            width: 100.w,
            height: 100.h,
            child: Padding(
                padding: EdgeInsets.all(16.sp),
                child: Column(
                  children: [
                    Expanded(
                        flex: 7,
                        child: SizedBox(
                          width: double.infinity,
                          height: 100.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 25.h,
                              ),
                              Image.asset(
                                ImageConstant.facebookButtonImage,
                                width: 100.w,
                              ),
                              Image.asset(
                                ImageConstant.googleButtonImage,
                                width: 100.w,
                              ),
                              Image.asset(
                                ImageConstant.appleButtonImage,
                                width: 100.w,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 10.w, right: 10.w),
                                child: Row(
                                  children: [
                                    const Expanded(
                                        flex: 4,
                                        child: Divider(
                                          color: Colors.grey,
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Center(
                                            child: Text(
                                          or,
                                          style: AppTextStyle.boldFont()
                                              .copyWith(
                                                  fontSize: 18.sp,
                                                  color: AppColors.blackColor),
                                        ))),
                                    const Expanded(
                                        flex: 4,
                                        child: Divider(
                                          color: Colors.grey,
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 3,
                        child: SizedBox(
                            height: 100.h,
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.sp)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius: 4,
                                        blurRadius: 5,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: CustomElevatedButton(
                                    text: "Next",
                                    backgroundColor:
                                        AppColors.backGroundGreenColor,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () =>
                                      context.goNamed(RouterClass.registerView),
                                  child: Text.rich(TextSpan(
                                      text: noAccount,
                                      style: AppTextStyle.normalFont().copyWith(
                                          fontSize: 18.sp,
                                          color: const Color.fromARGB(
                                              255, 122, 122, 122)),
                                      children: [
                                        TextSpan(
                                          text: signUp,
                                          style: AppTextStyle.boldFont()
                                              .copyWith(
                                                  fontSize: 18.sp,
                                                  color: AppColors
                                                      .backGroundGreenColor),
                                        )
                                      ])),
                                )
                              ],
                            )))
                  ],
                ))),
      ),
    ));
  }
}
