import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FabriqIconButton extends StatelessWidget {
  const FabriqIconButton({
    super.key,
    required this.icon,
    required this.width,
    required this.height,
    required this.callback,
  });

  final String icon;
  final double width, height;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: callback,
      style: IconButton.styleFrom(tapTargetSize: MaterialTapTargetSize.shrinkWrap),
      icon: SvgPicture.asset(
        icon,
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
