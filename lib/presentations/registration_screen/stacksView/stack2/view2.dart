import 'dart:async';
import 'package:eutel_mobile_app/widget/buttonwidget.dart';
import 'package:eutel_mobile_app/presentations/registration_screen/export.dart';

import '../../../../widget/custom_elevated_button.dart';

class View2 extends StatefulWidget {
  const View2({super.key});

  @override
  State<View2> createState() => _View2State();
}

class _View2State extends State<View2> {
  late Timer timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(const Duration(milliseconds: 4), (Timer t) {
      setState(() {
        RegisterControls.checkIfEmailIsEmpty();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 77.h,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              emailMessage,
              style: AppTextStyle.normalFont().copyWith(
                fontSize: 17.sp,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Text(emailLabel,
              style: AppTextStyle.boldFont().copyWith(fontSize: 17.sp)),
          // input for email address
          InputWidget(
            controller: GlobalControls.email,
            hintText: emailHint,
            obscurePassword: false,
            fillColors: AppColors.inputGrayColor,
          ),

          SizedBox(height: 50.h),
          Center(
            child: CustomElevatedButton(
              text: "Next",
            ),
          )
        ],
      ),
    );
  }
}
