import 'package:fabriq_pro/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FabriqTextButtonWithIcon extends StatelessWidget {
  const FabriqTextButtonWithIcon({
    super.key,
    required this.title,
    required this.icon,
    required this.width,
    required this.height,
    this.fontSize = 16,
    this.foregroundColor = Colors.white,
    this.backgroundColor = AppColors.darkBlue,
    required this.callback,
  });

  final String title, icon;
  final double width, height, fontSize;

  final Color foregroundColor, backgroundColor;

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: callback,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.sp),
            side: BorderSide.none,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 4.w,
          children: [
            SvgPicture.asset(icon, width: 24.spMin, height: 24.spMin, fit: BoxFit.cover),
            Text(title, style: TextStyle(color: foregroundColor, fontSize: fontSize, height: 1)),
          ],
        ),
      ),
    );
  }
}
