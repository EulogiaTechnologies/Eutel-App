import 'package:eutel_mobile_app/presentations/login_screen/export.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscurePassword;
  final Color fillColors;
  final IconButton? iconButton;
  final VoidCallback? onTapFunction;

  const InputWidget({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscurePassword,
    required this.fillColors,
    this.iconButton,
    this.onTapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 7),
      height: 55,
      child: TextFormField(
        controller: controller,
        obscureText: obscurePassword,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: fillColors,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: AppColors.backGroundGreenColor)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none),
          suffixIcon: iconButton,
        ),
        onTap: onTapFunction,
      ),
    );
  }
}
