import 'package:fabriq_pro/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideBarItemExpandable extends StatefulWidget {
  const SideBarItemExpandable({
    super.key,
    required this.title,
    required this.icon,
    required this.children,
  });

  final String title, icon;

  final List<Widget> children;

  @override
  State<SideBarItemExpandable> createState() => _SideBarItemExpandableState();
}

class _SideBarItemExpandableState extends State<SideBarItemExpandable> {
  bool isHovered = false;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              isExpanded = !isExpanded;
              setState(() {});
            },
            hoverColor: AppColors.darkBlue.withValues(alpha: 0.12),
            onHover: (value) {
              isHovered = value;
              setState(() {});
            },
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: Row(
                children: [
                  SizedBox(width: 40.spMin),
                  SvgPicture.asset(
                    widget.icon,
                    width: 24.spMin,
                    height: 24.spMin,
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      isHovered ? AppColors.darkBlue : Colors.black,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    widget.title,
                    style: TextStyle(
                      color: isHovered ? AppColors.darkBlue : Colors.black,
                      fontSize: 16.spMin,
                    ),
                  ),
                  Spacer(),
                  AnimatedRotation(
                    duration: Duration(milliseconds: 200),
                    turns: isExpanded ? 0.25 : 0,
                    child: SvgPicture.asset(
                      "assets/icons/expansion_icon.svg",
                      width: 10.sp,
                      height: 10.sp,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(width: 20.w),
                ],
              ),
            ),
          ),
          AnimatedSize(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: ConstrainedBox(
              constraints: isExpanded ? BoxConstraints() : BoxConstraints(maxHeight: 0),
              child: Padding(
                padding: EdgeInsets.only(left: 40.w),
                child: Column(children: [...widget.children]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
