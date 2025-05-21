import 'package:fabriq_pro/core/utils/colors.dart';
import 'package:fabriq_pro/features/common/widgets/fabriq_table_header_title.dart';
import 'package:flutter/material.dart';

class EmployeesTableHeader extends StatelessWidget {
  const EmployeesTableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: AppColors.backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FabriqTableHeaderTitle(title: "№", flex: 1),
          FabriqTableHeaderTitle(title: "Rasmi", flex: 1),
          FabriqTableHeaderTitle(title: "Ism familiya", flex: 3),
          FabriqTableHeaderTitle(title: "Ro'li", flex: 2),
          FabriqTableHeaderTitle(title: "Telefon raqami", flex: 2),
          FabriqTableHeaderTitle(title: "Manzili", flex: 2),
          FabriqTableHeaderTitle(title: "Taxrirlash", flex: 1),
        ],
      ),
    );
  }
}
