import 'package:fabriq_pro/core/utils/colors.dart';
import 'package:flutter/material.dart';
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
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            children: [
              SizedBox(width: 40),
              SvgPicture.asset(
                widget.icon,
                colorFilter: ColorFilter.mode(
                  isHovered ? AppColors.darkBlue : Colors.black,
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(width: 12),
              Text(
                widget.title,
                style: TextStyle(
                  color: isHovered ? AppColors.darkBlue : Colors.black,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
