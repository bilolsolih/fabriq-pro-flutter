import 'package:flutter/material.dart';
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
    return IconButton(
      onPressed: callback,
      style: IconButton.styleFrom(
        fixedSize: Size(36, 36),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side: BorderSide(color: color),
        ),
      ),
      icon: SvgPicture.asset(icon),
    );
  }
}
