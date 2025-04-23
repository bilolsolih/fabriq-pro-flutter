import 'package:fabriq_pro/core/utils/colors.dart';
import 'package:flutter/material.dart';
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
                  Spacer(),
                  AnimatedRotation(
                    duration: Duration(milliseconds: 200),
                    turns: isExpanded ? 0.25 : 0,
                    child: SvgPicture.asset(
                      "assets/icons/expansion_icon.svg",
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(width: 50),
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
                padding: const EdgeInsets.only(left: 40),
                child: Column(children: [...widget.children]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
