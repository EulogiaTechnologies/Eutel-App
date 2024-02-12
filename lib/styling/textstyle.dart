import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:eutel_mobile_app/styling/appcolors.dart';

class AppTextStyle {
  static var fontFamily = 'DMSans-VariableFont_opsz,wght';
    static var fontFamilyItalic = 'DMSans-Italic-VariableFont_opsz,wght';

  static  TextStyle boldFont() {
    return TextStyle(
      color: AppColors.blackColor,
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
      fontFamily: fontFamily,
    );
  }

    static TextStyle normalFont() {
    return TextStyle(
      color: AppColors.blackColor,
      fontSize: 20.sp,
      fontWeight: FontWeight.normal,
      fontFamily: fontFamily,
    );
  }



    static  TextStyle boldFontItalic() {
    return TextStyle(
      color: AppColors.blackColor,
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
      fontFamily: fontFamilyItalic,
    );
  }


    static TextStyle normalFontItalic() {
    return TextStyle(
      color: AppColors.blackColor,
      fontSize: 20.sp,
      fontWeight: FontWeight.normal,
      fontFamily: fontFamilyItalic,
    );
  }
}
