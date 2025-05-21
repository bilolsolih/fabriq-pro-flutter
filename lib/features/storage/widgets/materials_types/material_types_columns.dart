import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/colors.dart';
import '../../../common/widgets/fabriq_table_header_title.dart';

class MaterialTypesColumns extends StatelessWidget {
  const MaterialTypesColumns({super.key});

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
          FabriqTableHeaderTitle(title: "Nomi", flex: 1),
          FabriqTableHeaderTitle(title: "Ja'mi (kg)", flex: 1),
          FabriqTableHeaderTitle(title: "Ja'mi (metr)", flex: 1),
          FabriqTableHeaderTitle(title: "Ja'mi (pachka)", flex: 1),
          FabriqTableHeaderTitle(title: "Taxrirlash", flex: 1),
        ],
      ),
    );
  }
}
