import 'package:fabriq_pro/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FabriqTextButtonWithIcon extends StatelessWidget {
  const FabriqTextButtonWithIcon({
    super.key,
    required this.title,
    required this.icon,
    required this.width,
    required this.height,
    this.foregroundColor = Colors.white,
    this.backgroundColor = AppColors.darkBlue,
    required this.callback,
  });

  final String title, icon;
  final double width, height;

  final Color foregroundColor, backgroundColor;

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callback,
      style: TextButton.styleFrom(
        fixedSize: Size(width, height),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide.none,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 4,
        children: [
          SvgPicture.asset(icon),
          Text(title, style: TextStyle(color: foregroundColor, fontSize: 16)),
        ],
      ),
    );
  }
}
