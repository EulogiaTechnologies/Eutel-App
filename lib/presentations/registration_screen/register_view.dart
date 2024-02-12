import 'export.dart';
import 'package:eutel_mobile_app/presentations/registration_screen/stacksView/stack3/view3.dart';

class RegisterView extends ConsumerWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(builder: (context, ref, _) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.appWhiteColor,
          appBar: AppBar(
            backgroundColor: AppColors.appWhiteColor,
            leading: IconButton(
                onPressed: () {
                  context.goNamed(RouterClass.login);
                  RegisterControls.resetAllStackProviders();
                },
                icon: Icon(
                  Icons.arrow_back_rounded,
                  size: 23.sp,
                  color: AppColors.blackColor,
                )),
            title: Text(
              barTitle,
              style: AppTextStyle.boldFont().copyWith(fontSize: 16),
            ),
            centerTitle: true,
          ),
          body: SizedBox(
            height: 100.h,
            width: 100.w,
            child: Padding(
                padding: EdgeInsets.all(17.sp),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 6,
                        child: HeadIndicator(
                          index: 3,
                          lenght: 7,
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                          height: 100.h,
                          width: double.infinity,
                          child: PageView(
                            children: const [View1(), View2(), View3()],
                          ))
                    ],
                  ),
                )),
          ),
        ),
      );
    });
  }
}

class HeadIndicator extends StatelessWidget {
  final int index;
  final int lenght;
  const HeadIndicator({
    super.key,
    required this.index,
    required this.lenght,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 5.h,
        width: 100.w,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: lenght,
          itemBuilder: (context, ind) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              width: 40,
              height: 2.5,
              decoration: BoxDecoration(
                color: index > ind
                    ? AppColors.backGroundGreenColor
                    : AppColors.grayColor,
                borderRadius: BorderRadius.circular(25.sp),
              ),
            );
          },
        ));
  }
}
