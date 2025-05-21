import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/colors.dart';
import '../../../common/widgets/fabriq_table_header_title.dart';

class MaterialsColumns extends StatelessWidget {
  const MaterialsColumns({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      color: AppColors.backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FabriqTableHeaderTitle(title: "ID", flex: 1),
          FabriqTableHeaderTitle(title: "Pechat", flex: 2),
          FabriqTableHeaderTitle(title: "Rasm", flex: 2),
          FabriqTableHeaderTitle(title: "Partiyasi", flex: 2),
          FabriqTableHeaderTitle(title: "Eni", flex: 2),
          FabriqTableHeaderTitle(title: "Qalinligi", flex: 2),
          FabriqTableHeaderTitle(title: "Kimdan", flex: 3),
          FabriqTableHeaderTitle(title: "Kimga", flex: 3),
          FabriqTableHeaderTitle(title: "Miqdori", flex: 2),
          FabriqTableHeaderTitle(title: "Sana", flex: 2),
          FabriqTableHeaderTitle(title: "Taxrirlash", flex: 3),
        ],
      ),
    );
  }
}
