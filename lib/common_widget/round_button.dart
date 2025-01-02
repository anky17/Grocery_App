import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/color_extension.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final Color bgColor;
  final VoidCallback onPressed;
  const RoundButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.bgColor = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 60,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
      minWidth: double.maxFinite,
      elevation: 0.1,
      color: TColor.primary,
      child: Text(title,
          style: const TextStyle(
              color: Color(0xffFCFCFC),
              fontSize: 18,
              fontWeight: FontWeight.w500)),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final String title;
  final String icon;
  final Color bgColor;
  final VoidCallback onPressed;
  const RoundIconButton(
      {super.key,
      required this.title,
      required this.icon,
      required this.bgColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 60,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
      minWidth: double.maxFinite,
      elevation: 0.1,
      color: TColor.primary,
      child: Row(
        children: [
          Image.asset(icon, width: 20, height: 20, fit: BoxFit.contain),
          Text(title,
              style: const TextStyle(
                  color: Color(0xffFCFCFC),
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
