import 'package:eutel_mobile_app/global_controller.dart';
import 'package:eutel_mobile_app/presentations/login_screen/login_provider.dart';
import 'package:eutel_mobile_app/presentations/login_screen/global_controllers.dart';

class UserLoginController {
  static isEmailInputTap() {
    providerRef.read(isTextFieldTap.notifier).state = true;
    providerRef.read(isPasswordFieldTap.notifier).state = false;
  }

  static isPasswordInputTap() {
    providerRef.read(isPasswordFieldTap.notifier).state = true;
    providerRef.read(isTextFieldTap.notifier).state = false;
  }

  static checkIfEmailAndPasswordIsEmpty() {
    if (GlobalControls.emailController.text.isEmpty ||
        GlobalControls.passwordController.text.isEmpty) {
      providerRef.read(isBothInputEmpty.notifier).state = false;
    } else {
      providerRef.read(isBothInputEmpty.notifier).state = true;
    }
  }

  static clearInputs() {
    GlobalControls.emailController.text = '';
    GlobalControls.passwordController.text = '';
  }
}
