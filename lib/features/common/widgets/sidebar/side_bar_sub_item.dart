import 'package:fabriq_pro/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideBarSubItem extends StatelessWidget {
  const SideBarSubItem({
    super.key,
    required this.title,
    required this.icon,
    required this.callback,
  });

  final String title, icon;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: SizedBox(
        height: 36,
        child: Row(
          children: [
            SizedBox(width: 12),
            Text(title, style: TextStyle(color: AppColors.secondary, fontSize: 14)),
            SizedBox(width: 12),
            SvgPicture.asset(icon),
          ],
        ),
      ),
    );
  }
}
