import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/colors.dart';
import '../../common/widgets/buttons/fabriq_delete_button.dart';
import '../../common/widgets/buttons/fabriq_icon_button_outlined.dart';
import '../../common/widgets/fabriq_table_data.dart';

class AccessoriesTableDataRows extends StatefulWidget {
  const AccessoriesTableDataRows({super.key});

  @override
  State<AccessoriesTableDataRows> createState() => _AccessoriesTableDataRowsState();
}

class _AccessoriesTableDataRowsState extends State<AccessoriesTableDataRows> {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 20),
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
                FabriqTableData(data: "1",flex:1),
                FabriqTableData(data: "gul", flex: 1),
                FabriqTableData(data: "1234",flex:1),
                FabriqTableData(data: "100.dona" ,flex: 2),
                FabriqTableData(data: "10.03.2025", flex: 1),
                Flexible(
                  flex: 1,
                  child: Row(
                    spacing: 12,
                    children: [
                      FabriqIconButtonOutlined(
                        icon: "assets/icons/edit.svg",
                        color: AppColors.darkBlue,
                        callback: () {}
                      ),
                      FabriqDeleteButton(
                        text: "Aksesuarni o'chirishni xohlaysizmi?",
                        icon: "assets/icons/delete.svg",
                        color: Color(0xFFF64848),
                        callback: (){},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
