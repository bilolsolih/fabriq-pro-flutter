import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/colors.dart';

class FabriqTextFormField extends StatelessWidget {
  const FabriqTextFormField({
    super.key,
    required this.controller,
    required this.label,
    required this.hintText,
    required this.validator,
    required this.isValid,
    this.width = 308,
    this.height = 48,
    this.autoValidateMode = AutovalidateMode.onUnfocus,
  });

  final TextEditingController controller;
  final String label, hintText;

  final double width, height;
  final String? Function(String?) validator;

  final bool? isValid;
  final AutovalidateMode autoValidateMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        TextFormField(
          controller: controller,
          validator: validator,
          autovalidateMode: autoValidateMode,
          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.backgroundColor,
            constraints: BoxConstraints.tight(Size(width, height)),
            contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
            hintStyle: TextStyle(color: AppColors.secondary2, fontSize: 16),
            errorStyle: TextStyle(fontSize: 14.r, fontWeight: FontWeight.w500),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
