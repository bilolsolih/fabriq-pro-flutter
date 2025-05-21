import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/colors.dart';

class FabriqTextButton extends StatelessWidget {
  const FabriqTextButton({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.callback,
    this.fontSize = 16,
    this.foregroundColor = Colors.white,
    this.backgroundColor = AppColors.darkBlue,
  });

  final String text;
  final double width, height, fontSize;

  final Color foregroundColor, backgroundColor;

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        height: height,
        child: TextButton(
          onPressed: callback,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.sp),
              side: BorderSide.none,
            ),
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
