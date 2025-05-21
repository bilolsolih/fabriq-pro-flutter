import 'package:fabriq_pro/core/utils/colors.dart';
import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button_with_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FabriqBodyHeader extends StatelessWidget {
  const FabriqBodyHeader({
    super.key,
    required this.title,
    required this.buttonTitle,
    required this.icon,
    required this.filterCallback,
    required this.buttonCallback,
  });

  final String title, buttonTitle, icon;
  final VoidCallback filterCallback, buttonCallback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 20.h),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 24.spMin, fontWeight: FontWeight.w500),
          ),
          Spacer(),
          FabriqTextButtonWithIcon(
            title: "Filter",
            icon: "assets/icons/filter.svg",
            width: 106.w,
            height: 40.h,
            fontSize: 16.spMin,
            foregroundColor: Colors.black,
            backgroundColor: AppColors.backgroundColor,
            callback: filterCallback,
          ),
          SizedBox(width: 20.w),
          FabriqTextButtonWithIcon(
            title: buttonTitle,
            icon: icon,
            width: 180.w,
            height: 40.h,
            fontSize: 16.spMin,
            callback: buttonCallback,
          ),
        ],
      ),
    );
  }
}
