import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FabriqIconButtonOutlined extends StatelessWidget {
  const FabriqIconButtonOutlined({
    super.key,
    required this.icon,
    required this.color,
    required this.callback,
  });

  final String icon;
  final Color color;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 36.spMin,
      height: 36.spMin,
      child: IconButton(
        onPressed: callback,
        style: IconButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.sp),
            side: BorderSide(color: color),
          ),
        ),
        icon: SvgPicture.asset(icon, fit: BoxFit.cover, width: 19.spMin, height: 19.spMin),
      ),
    );
  }
}
