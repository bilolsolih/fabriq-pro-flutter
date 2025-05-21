import 'package:fabriq_pro/core/utils/styles.dart';
import 'package:fabriq_pro/data/models/accessory/accessory_models.dart';
import 'package:fabriq_pro/data/models/material/material_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/utils/colors.dart';
import '../../../common/widgets/buttons/fabriq_delete_button.dart';
import '../../../common/widgets/buttons/fabriq_icon_button_outlined.dart';
import '../../../common/widgets/fabriq_table_data.dart';
import '../../managers/materials_types/material_types_bloc.dart';

class AccessoryItem extends StatelessWidget {
  const AccessoryItem({super.key, required this.index, required this.accessory});

  final AccessoryModel accessory;
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
          FabriqTableData(data: "${index + 1}", flex: 1),
          FabriqTableData(data: accessory.quantity.toString(), flex: 2),
          FabriqTableDataV2(
            data: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2,
              children: [
                Text(accessory.fromUser, style: AppStyles.tableItem),
                Text(accessory.fromUserRole, style: AppStyles.userRole),
              ],
            ),
            flex: 4,
          ),
          FabriqTableDataV2(
            data: Column(
              spacing: 2,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(accessory.toUser, style: AppStyles.tableItem),
                Text(accessory.toUserRole, style: AppStyles.userRole),
              ],
            ),
            flex: 4,
          ),
          FabriqTableDataV2(
            data: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DateFormat("yyyy.MM.dd").format(accessory.date.toLocal()),
                  style: AppStyles.tableItem,
                ),
                Text(
                  DateFormat("HH:mm:ss").format(accessory.date.toLocal()),
                  style: AppStyles.userRole,
                ),
              ],
            ),
            flex: 2,
          ),
          Flexible(
            flex: 3,
            child: Row(
              spacing: 12.w,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FabriqIconButtonOutlined(
                  icon: "assets/icons/edit.svg",
                  color: AppColors.darkBlue,
                  callback:
                      () => context.go(Routes.getMaterialTypeUpdate(accessory.id), extra: accessory),
                ),
                FabriqDeleteButton(
                  text: "Materialni o’chirishni xoxlaysizmi?",
                  icon: "assets/icons/delete.svg",
                  color: Color(0xFFF64848),
                  callback: () {
                    context.read<MaterialTypesBloc>().add(DeleteMaterialType(id: accessory.id));
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
