import 'package:fabriq_pro/core/routing/routes.dart';
import 'package:fabriq_pro/core/utils/colors.dart';
import 'package:fabriq_pro/data/models/employee/user_model.dart';
import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_delete_button.dart';
import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_icon_button_outlined.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../common/widgets/fabriq_table_data.dart';

class EmployeesTableDataRows extends StatefulWidget {
  const EmployeesTableDataRows({super.key, required this.employees});

  final List<User> employees;

  @override
  State<EmployeesTableDataRows> createState() => _EmployeesTableDataRowsState();
}

class _EmployeesTableDataRowsState extends State<EmployeesTableDataRows> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: widget.employees.length,
        itemBuilder: (context, index) {
          final employee = widget.employees[index];
          return Container(
            height: 60.spMin,
            padding: EdgeInsets.symmetric(horizontal: 20.spMin),
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
                FabriqTableData(data: "${employee.id + 1}"),
                Flexible(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child:
                        employee.image != null
                            ? ClipRRect(child: Image.network(employee.image!))
                            : Icon(Icons.account_circle, size: 40.spMin),
                  ),
                ),
                FabriqTableData(data: "${employee.firstName} ${employee.lastName}", flex: 3),
                FabriqTableData(data: employee.role, flex: 2,),
                FabriqTableData(data: employee.phoneNumber, flex: 2),
                FabriqTableData(data: employee.address, flex: 2),
                Flexible(
                  flex: 1,
                  child: Row(
                    spacing: 12.spMin,
                    children: [
                      FabriqIconButtonOutlined(
                        icon: "assets/icons/edit.svg",
                        color: AppColors.darkBlue,
                        callback: () => context.push(Routes.getEmployeeUpdate(employee.id)),
                      ),
                      FabriqDeleteButton(
                        text: "Xodimni o'chirishni xohlaysizmi?",
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
