import 'package:fabriq_pro/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FabriqHeader extends StatelessWidget {
  const FabriqHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.h,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/sidebar.svg",
                  width: 24.sp,
                  height: 24.sp,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 44.w),
                TextFormField(
                  style: TextStyle(fontSize: 16.sp),
                  cursorWidth: 1,
                  decoration: InputDecoration(
                    hintText: "Bu yerdan qidiring...",
                    hintStyle: TextStyle(
                      color: Color(0xFFD9D9D9),
                      fontFamily: "Roboto",
                      fontSize: 12.sp,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 24.w),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.sp),
                      borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.sp),
                      borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                    ),
                    constraints: BoxConstraints.tight(Size(256.w, 40.h)),
                    suffixIconConstraints: BoxConstraints.loose(
                      Size(double.infinity, double.infinity),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(right: 24.w),
                      child: SvgPicture.asset(
                        "assets/icons/search.svg",
                        width: 24.sp,
                        height: 24.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              spacing: 12.w,
              children: [
                Text("20:06", style: TextStyle(color: AppColors.secondary, fontSize: 18.sp)),
                SvgPicture.asset(
                  "assets/icons/calendar.svg",
                  width: 24.sp,
                  height: 24.sp,
                  fit: BoxFit.cover,
                ),
                SvgPicture.asset(
                  "assets/icons/notifications_header.svg",
                  width: 24.sp,
                  height: 24.sp,
                  fit: BoxFit.cover,
                ),
                SvgPicture.asset(
                  "assets/icons/about.svg",
                  width: 24.sp,
                  height: 24.sp,
                  fit: BoxFit.cover,
                ),
                Text("SolihCoder", style: TextStyle(color: AppColors.secondary, fontSize: 18.sp)),
                Image.asset(
                  "assets/images/profile.png",
                  width: 44.sp,
                  height: 44.sp,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
