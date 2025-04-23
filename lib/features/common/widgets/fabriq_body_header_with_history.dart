import 'package:fabriq_pro/core/utils/colors.dart';
import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button_with_icon.dart';
import 'package:flutter/material.dart';

class FabriqBodyHeaderWithHistory extends StatelessWidget {
  const FabriqBodyHeaderWithHistory({
    super.key,
    required this.title,
    required this.buttonTitle,
    required this.icon,
    required this.filterCallback,
    required this.buttonCallback,
  });

  final String title, buttonTitle, icon;
  final VoidCallback filterCallback, buttonCallback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
          ),
          Spacer(),
          FabriqTextButtonWithIcon(
            title: "Filter",
            icon: "assets/icons/filter.svg",
            width: 106,
            height: 40,
            foregroundColor: Colors.black,
            backgroundColor: AppColors.backgroundColor,
            callback: filterCallback,
          ),
          SizedBox(width: 20),
          FabriqTextButtonWithIcon(
            title: "Maxsulot tarixi",
            icon: "assets/icons/history.svg",
            width: 180,
            height: 40,
            foregroundColor: Colors.black,
            backgroundColor: AppColors.backgroundColor,
            callback: filterCallback,
          ),
          SizedBox(width: 20),
          FabriqTextButtonWithIcon(
            title: buttonTitle,
            icon: icon,
            width: 180,
            height: 40,
            callback: buttonCallback,
          ),
        ],
      ),
    );
  }
}
