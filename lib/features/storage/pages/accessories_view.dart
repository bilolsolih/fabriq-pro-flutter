import 'package:fabriq_pro/core/utils/constants.dart';
import 'package:fabriq_pro/features/storage/managers/accessories/accessories_cubit.dart';
import 'package:fabriq_pro/features/storage/managers/accessories/accessories_state.dart';
import 'package:fabriq_pro/features/storage/pages/dialogs/accessory/accessory_add_dialog.dart';
import 'package:fabriq_pro/features/storage/widgets/accessories/accessories_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/widgets/fabriq_body_header_with_history.dart';
import '../widgets/accessories/accessories_columns.dart';

class AccessoriesView extends StatelessWidget {
  const AccessoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccessoriesCubit, AccessoriesState>(
      builder: (context, state) {
        if (state.status == Status.loading) {
          return Center(child: CircularProgressIndicator());
        } else if (state.status == Status.loaded) {
          return Padding(
            padding: EdgeInsets.all(20.spMin),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.sp),
                border: Border.all(color: Color(0xFFD5D5D7), width: 1),
              ),
              child: Column(
                children: [
                  FabriqBodyHeaderWithHistory(
                    title: "${state.selectedType!.title} - Aksessuarlar",
                    icon: "assets/icons/add_profile.svg",
                    buttonTitle: "Qo'shish",
                    filterCallback: () {},
                    buttonCallback: () async {
                      final bloc = context.read<AccessoriesCubit>();
                      await showDialog(
                        context: context,
                        builder: (context) {
                          bloc.loadSuppliersAndAccessories();
                          return BlocProvider.value(value: bloc, child: AccessoryAddDialog());
                        },
                      );
                    },
                  ),
                  Expanded(child: Column(children: [AccessoriesColumns(), AccessoriesBody()])),
                ],
              ),
            ),
          );
        } else {
          return Center(child: Text("Aksessuarlar"));
        }
      },
    );
  }
}
