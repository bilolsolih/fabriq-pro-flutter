import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/colors.dart';
import 'buttons/fabriq_icon_button.dart';

class FabriqPasswordFormField extends StatefulWidget {
  const FabriqPasswordFormField({
    super.key,
    required this.controller,
    required this.label,
    required this.hintText,
    required this.validator,
    required this.isValid,
  });

  final TextEditingController controller;
  final String label, hintText;
  final String? Function(String?) validator;
  final bool? isValid;

  @override
  State<FabriqPasswordFormField> createState() => _FabriqPasswordFormFieldState();
}

class _FabriqPasswordFormFieldState extends State<FabriqPasswordFormField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          autovalidateMode: AutovalidateMode.onUnfocus,
          obscureText: !showPassword,
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.backgroundColor,
            constraints: BoxConstraints.tight(Size(308, 48)),
            contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
            hintText: widget.hintText,
            hintStyle: TextStyle(color: AppColors.secondary, fontSize: 16),
            errorStyle: TextStyle(fontSize: 14.r, fontWeight: FontWeight.w500),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
            suffixIconConstraints: BoxConstraints.loose(
              Size(double.infinity, double.infinity),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: AnimatedCrossFade(
                duration: Duration(milliseconds: 300),
                crossFadeState:
                    showPassword
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                firstChild: FabriqIconButton(
                  icon: "assets/icons/hide_password.svg",
                  width: 20.w,
                  height: 20.h,
                  callback: () => setState(() => showPassword = !showPassword),
                ),
                secondChild: FabriqIconButton(
                  icon: "assets/icons/show_password.svg",
                  width: 15.w,
                  height: 15.h,
                  callback: () => setState(() => showPassword = !showPassword),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
