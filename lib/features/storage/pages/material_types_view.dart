import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routing/router.dart';
import '../../../core/routing/routes.dart';
import '../../common/widgets/fabriq_body_header_with_history.dart';
import '../widgets/materials_types/material_types_body.dart';
import '../widgets/materials_types/material_types_columns.dart';

class MaterialTypesView extends StatelessWidget {
  const MaterialTypesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.sp),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.sp),
          border: Border.all(color: Color(0xFFD5D5D7), width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FabriqBodyHeaderWithHistory(
              title: "Barcha Materiallar",
              icon: "assets/icons/add_profile.svg",
              buttonTitle: "Qo'shish",
              filterCallback: () {},
              buttonCallback: () async {
                router.go(Routes.getMaterialTypeCreate());
              },
            ),
            MaterialTypesColumns(),
            MaterialTypesBody(),
          ],
        ),
      ),
    );
  }
}
