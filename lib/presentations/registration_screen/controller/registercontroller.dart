import 'package:eutel_mobile_app/presentations/registration_screen/export.dart';

class RegisterControls {
  static resetAllStackProviders() {
 
  }

// check if email from user is empty
  static checkIfEmailIsEmpty() {
    if (GlobalControls.email.text.isEmpty) {
      providerRef.read(isEmailInputEmpty.notifier).state = false;
    } else {
      providerRef.read(isEmailInputEmpty.notifier).state = true;
    }
  }

  // check if input from user email contains @
  static ifEmailIsCorrect() {
    if (GlobalControls.email.text.contains('@')) {
      providerRef.read(ifEmailContains.notifier).state = false;
    } else {
      providerRef.read(ifEmailContains.notifier).state = true;
    }
  }
}
