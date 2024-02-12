import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color backgroundColor;
  final Color textColor;
  final TextStyle textStyle;
  final EdgeInsets padding;
  final RoundedRectangleBorder borderStyle;

  const AppButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    required this.backgroundColor,
    required this.textColor,
    required this.borderStyle,
    this.textStyle = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    this.padding =
        const EdgeInsets.only(left: 11, right: 12, top: 2, bottom: 2),
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: backgroundColor,
      shape: borderStyle,
      child: Padding(
        padding: padding,
        child: Text(
          buttonText,
          style: textStyle,
        ),
      ),
    );
  }
}
