import 'package:eutel_mobile_app/presentations/registration_screen/export.dart';

final registerProvider = ChangeNotifierProvider<RegisterControls>((ref) {
  return RegisterControls();
});

class RegisterControls extends ChangeNotifier {
  int currentIndex = 1;
  PageController pageController = PageController();

  void changePage(
    int index,
  ) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 100),
      curve: Curves.linear,
    );
    currentIndex = index + 1;
    notifyListeners();
  }

  static resetAllStackProviders() {}

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
