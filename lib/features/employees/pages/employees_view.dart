import 'package:fabriq_pro/features/employees/managers/employees_bloc.dart';
import 'package:fabriq_pro/features/employees/managers/employees_state.dart';
import 'package:fabriq_pro/features/employees/widgets/employees_table_data_rows.dart';
import 'package:fabriq_pro/features/employees/widgets/employees_table_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/widgets/fabriq_body_header.dart';
import 'employee_add_dialog.dart';

class EmployeesView extends StatelessWidget {
  const EmployeesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color(0xFFD5D5D7), width: 1),
        ),
        child: Column(
          children: [
            FabriqBodyHeader(
              title: "Xodimlar",
              icon: "assets/icons/add_profile.svg",
              buttonTitle: "Xodim qo'shish",
              filterCallback: () {},
              buttonCallback: () async {
                await showDialog(context: context, builder: (context) => EmployeeAddDialog());
              },
            ),
            EmployeesTableHeader(),
            BlocBuilder<EmployeesBloc, EmployeesState>(
              builder: (context, state) => EmployeesTableDataRows(employees: state.employees),
            ),
          ],
        ),
      ),
    );
  }
}
