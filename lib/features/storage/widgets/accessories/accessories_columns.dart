import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/colors.dart';
import '../../../common/widgets/fabriq_table_header_title.dart';

class AccessoriesColumns extends StatelessWidget {
  const AccessoriesColumns({super.key});

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
          FabriqTableHeaderTitle(title: "Miqdori", flex: 2),
          FabriqTableHeaderTitle(title: "Kimdan", flex: 4),
          FabriqTableHeaderTitle(title: "Kimga", flex: 4),
          FabriqTableHeaderTitle(title: "Sana", flex: 2),
          FabriqTableHeaderTitle(title: "Taxrirlash", flex: 3),
        ],
      ),
    );
  }
}
