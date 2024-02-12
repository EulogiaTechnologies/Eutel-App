import 'package:eutel_mobile_app/presentations/onboarding_screen/export.dart';

import 'package:eutel_mobile_app/presentations/login_screen/export.dart';

import 'package:eutel_mobile_app/core/utils/image_constant.dart';

import '../model/onboarding_model.dart';

class OnboardingIndexNotifier extends StateNotifier<int> {
  OnboardingIndexNotifier() : super(0);

  // Method to update the onboarding index
  void updateIndex(int newIndex) {
    state = newIndex;
  }
}

final onboardingProvider = ChangeNotifierProvider<OnboardingController>((ref) {
  return OnboardingController();
});

class OnboardingController extends ChangeNotifier {
  int currentIndex = 0;
  int currentIndexImage = 0;
  final PageController pageController = PageController();

  void animate() {
    Future.delayed(const Duration(microseconds: 1), () {
      // ref.read(isOnboardingIndexProvider.notifier).state = true;
    });
  }

  void changePage(
    int index,
  ) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 100),
      curve: Curves.linear,
    );
    currentIndex = index;
    notifyListeners();
  }

  void pushtoNext(BuildContext context) {
    if (currentIndex < 3) {
      pageController.nextPage(
          duration: const Duration(milliseconds: 100), curve: Curves.bounceIn);
    } else {
      context.replaceNamed(RouterClass.registerView);
    }
  }

  List<OnboardingModel> onboardingModels = [
    OnboardingModel(
      title: "Buy Airtime",
      description: "Secured payments you can trust!",
      imagePath: ImageConstant.onBoardingImage1,
    ),
    OnboardingModel(
      title: "Pay Bills and Utilities Bill",
      description: "Secured payments you can trust!",
      imagePath: ImageConstant.onBoardingImage2,
    ),
    OnboardingModel(
      title: "Get Credit Card",
      description: "Now easier to pay bills online!",
      imagePath: ImageConstant.onBoardingImage3,
    ),
    OnboardingModel(
      title: "24/7 customer support",
      description: "24/7 customer support you can trust.",
      imagePath: ImageConstant.onBoardingImage3,
    ),
  ];
}
