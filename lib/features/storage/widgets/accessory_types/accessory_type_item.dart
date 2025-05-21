import 'package:fabriq_pro/data/models/accessory/accessory_models.dart';
import 'package:fabriq_pro/features/storage/managers/accessories_types/accessory_types_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/utils/colors.dart';
import '../../../common/widgets/buttons/fabriq_delete_button.dart';
import '../../../common/widgets/buttons/fabriq_icon_button_outlined.dart';
import '../../../common/widgets/fabriq_table_data.dart';

class AccessoryTypeItem extends StatelessWidget {
  const AccessoryTypeItem({super.key, required this.index, required this.accessoryType});

  final AccessoryTypeModel accessoryType;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Color(0xFFD5D5D7), width: 1),
          bottom: BorderSide(color: Color(0xFFD5D5D7), width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FabriqTableData(data: "${index + 1}"),
          FabriqTableData(data: accessoryType.title),
          FabriqTableData(data: "${accessoryType.quantity} dona"),
          Flexible(
            flex: 1,
            child: Row(
              spacing: 12.w,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FabriqIconButtonOutlined(
                  icon: "assets/icons/edit.svg",
                  color: AppColors.darkBlue,
                  callback: () {
                    context.go(
                      Routes.getAccessoryTypeUpdate(accessoryType.id),
                      extra: accessoryType,
                    );
                  },
                ),
                FabriqDeleteButton(
                  text: "Aksesuarni o’chirishni xoxlaysizmi?",
                  icon: "assets/icons/delete.svg",
                  color: Color(0xFFF64848),
                  callback: () {
                    context.read<AccessoryTypesCubit>().deleteAccessoryType(id: accessoryType.id);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
