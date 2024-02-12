import 'dart:async';
import '../controller/controller.dart';
import '../export.dart';
import 'package:eutel_mobile_app/widget/textfiedwidget.dart';

class UserLoginView extends StatefulWidget {
  const UserLoginView({super.key});

  @override
  State<UserLoginView> createState() => _UserLoginViewState();
}

class _UserLoginViewState extends State<UserLoginView> {
  bool isObscurePassword = true;
  late Timer timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(const Duration(milliseconds: 4), (Timer t) {
      setState(() {
        UserLoginController.checkIfEmailAndPasswordIsEmpty();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var ifEmailIsTap = providerRef.watch(isTextFieldTap) == true;
    var ifPasswordIsTap = providerRef.watch(isPasswordFieldTap) == true;
    var ifBothInputNotEmpty = providerRef.watch(isBothInputEmpty) == true;

    return SafeArea(
        child: WillPopScope(
      onWillPop: () async {
        setState(() {
          UserLoginController.clearInputs();
        });
        context.goNamed(RouterClass.login);
        return false;
      },
      child: Scaffold(
        backgroundColor: AppColors.appWhiteColor,
        appBar: AppBar(
            backgroundColor: AppColors.appWhiteColor,
            leading: IconButton(
                onPressed: () {
                  setState(() {
                    UserLoginController.clearInputs();
                  });
                  context.goNamed(RouterClass.login);
                },
                icon: Icon(
                  Icons.arrow_back_rounded,
                  size: 23.sp,
                  color: AppColors.blackColor,
                )),
            title: Text(
              appBarText,
              style: AppTextStyle.boldFont(),
            ),
            centerTitle: true),
        body: Padding(
            padding: EdgeInsets.all(20.sp),
            child: SizedBox(
              width: 100.w,
              height: 100.h,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                        width: 100.w,
                        height: 68.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // later add widget for error message if password is wrong
                            // later add widget for error message if password is wrong
                            Row(
                              children: [
                                Text(welcomeBack,
                                    style: AppTextStyle.boldFont()),
                                LoginIcons.greetingIcon()
                              ],
                            ),
                            SizedBox(height: 1.h),
                            Text(
                              signInMessage,
                              style: AppTextStyle.normalFont().copyWith(
                                  fontSize: 19.sp, color: AppColors.grayColor),
                            ),
                            SizedBox(height: 1.h),
                            Text(emailLabel,
                                style: AppTextStyle.boldFont()
                                    .copyWith(fontSize: 17.sp)),

                            // input for email address
                            InputWidget(
                                controller: GlobalControls.emailController,
                                hintText: emailHintTextInput,
                                obscurePassword: false,
                                fillColors: ifEmailIsTap
                                    ? AppColors.lightGreenColor
                                    : AppColors.inputGrayColor,
                                onTapFunction: () => setState(() {
                                      UserLoginController.isEmailInputTap();
                                    })),

                            SizedBox(height: 1.h),
                            Text(passwordLabel,
                                style: AppTextStyle.boldFont()
                                    .copyWith(fontSize: 17.sp)),
                            // input for user password
                            InputWidget(
                              controller: GlobalControls.passwordController,
                              hintText: passwordHintText,
                              obscurePassword: isObscurePassword,
                              fillColors: ifPasswordIsTap
                                  ? AppColors.lightGreenColor
                                  : AppColors.inputGrayColor,
                              iconButton: IconButton(
                                icon: Icon(isObscurePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    isObscurePassword = !isObscurePassword;
                                  });
                                },
                              ),
                              onTapFunction: () => setState(() {
                                UserLoginController.isPasswordInputTap();
                              }),
                            ),

                            SizedBox(height: 1.h),
                            Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {},
                                child: Text(
                                  forgotPassword,
                                  style: AppTextStyle.boldFont().copyWith(
                                      fontSize: 17.sp,
                                      color: AppColors.backGroundGreenColor,
                                      decoration: TextDecoration.underline,
                                      decorationThickness: 5.sp,
                                      decorationColor:
                                          AppColors.backGroundGreenColor),
                                ),
                              ),
                            )
                            // later add loading animation here
                            // later add loading animation here
                          ],
                        )),
                    SizedBox(
                        width: 100.w,
                        height: 15.h,
                        child: Align(
                          alignment: Alignment.center,
                          child: AppButton(
                            padding: EdgeInsets.only(
                                left: 30.w, right: 30.w, top: 2.h, bottom: 2.h),
                            buttonText: signUp,
                            backgroundColor: ifBothInputNotEmpty
                                ? AppColors.backGroundGreenColor
                                : AppColors.lightGreenColor,
                            onPressed: () {},
                            borderStyle: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.sp)),
                              side: const BorderSide(
                                width: 0,
                              ),
                            ),
                            textColor: AppColors.appWhiteColor,
                            textStyle: AppTextStyle.boldFont().copyWith(
                                color: AppColors.appWhiteColor,
                                fontSize: 19.sp),
                          ),
                        ))
                  ],
                ),
              ),
            )),
      ),
    ));
  }
}
