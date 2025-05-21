import 'package:fabriq_pro/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideBarItem extends StatefulWidget {
  const SideBarItem({super.key, required this.title, required this.icon, required this.callback});

  final String title, icon;
  final VoidCallback callback;

  @override
  State<SideBarItem> createState() => _SideBarItemState();
}

class _SideBarItemState extends State<SideBarItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: widget.callback,
        hoverColor: AppColors.darkBlue.withValues(alpha: 0.12),
        onHover: (value) {
          isHovered = value;
          setState(() {});
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.spMin),
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
            ],
          ),
        ),
      ),
    );
  }
}
