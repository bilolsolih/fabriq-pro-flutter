import 'package:fabriq_pro/core/utils/constants.dart';
import 'package:fabriq_pro/features/storage/managers/materials/materials_cubit.dart';
import 'package:fabriq_pro/features/storage/managers/materials/materials_state.dart';
import 'package:fabriq_pro/features/storage/widgets/materials/materials_body.dart';
import 'package:fabriq_pro/features/storage/widgets/materials/materials_columns.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/widgets/fabriq_body_header_with_history.dart';

class MaterialsView extends StatelessWidget {
  const MaterialsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MaterialsCubit, MaterialsState>(
      builder: (context, state) {
        if (state.status == Status.loading) {
          return Center(child: CircularProgressIndicator());
        } else if (state.status == Status.loaded) {
          return Padding(
            padding: EdgeInsets.all(20.sp),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.sp),
                border: Border.all(color: Color(0xFFD5D5D7), width: 1),
              ),
              child: Column(
                children: [
                  FabriqBodyHeaderWithHistory(
                    title: "${state.selectedType!.title} - Materiallar",
                    icon: "assets/icons/add_profile.svg",
                    buttonTitle: "Qo'shish",
                    filterCallback: () {},
                    buttonCallback: () async {
                      // router.go(Routes.getMaterialTypeCreate());
                    },
                  ),
                  Expanded(child: Column(children: [MaterialsColumns(), MaterialsBody()])),
                ],
              ),
            ),
          );
        } else {
          return Center(child: Text("Materiallar"));
        }
      },
    );
  }
}
