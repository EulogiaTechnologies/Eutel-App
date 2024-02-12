import '../export.dart';

// icons that are on the login screen
class LoginIcons{
  static Icon errorHint() {
    return Icon(
        Icons.error_outline_rounded,
        color: AppColors.errorColor,
        size: 20.sp,
      );
  }


    static Transform greetingIcon() {
    return Transform.rotate(
      angle: 11,
      child: Icon(
        Icons.waving_hand,
        color: AppColors.greetingIconColor,
        size: 21.sp,
      ),
    );
  }
}