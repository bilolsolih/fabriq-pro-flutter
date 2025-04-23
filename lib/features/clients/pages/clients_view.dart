import 'package:fabriq_pro/features/clients/managers/clients_bloc.dart';
import 'package:fabriq_pro/features/clients/managers/clients_state.dart';
import 'package:fabriq_pro/features/clients/pages/client_add_dialog.dart';
import 'package:fabriq_pro/features/clients/widgets/clients_table_data_rows.dart';
import 'package:fabriq_pro/features/clients/widgets/clients_table_header.dart';
import 'package:fabriq_pro/features/common/widgets/fabriq_body_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientsView extends StatelessWidget {
  const ClientsView({super.key});

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
              title: "Mijozlar",
              icon: "assets/icons/add_profile.svg",
              buttonTitle: "Mijoz qo'shish",
              filterCallback: () {},
              buttonCallback: () async {
                await showDialog(context: context, builder: (context) => ClientAddDialog());
              },
            ),
            ClientsTableHeader(),

            BlocBuilder<ClientsBloc, ClientsState>(
              builder: (context, state) => ClientsTableDataRows(clients: state.clients),
            ),
          ],
        ),
      ),
    );
  }
}
