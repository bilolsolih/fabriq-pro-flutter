import 'package:fabriq_pro/core/routing/routes.dart';
import 'package:fabriq_pro/core/utils/colors.dart';
import 'package:fabriq_pro/data/models/client/client_model.dart';
import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_delete_button.dart';
import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_icon_button_outlined.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common/widgets/fabriq_table_data.dart';

class ClientsTableDataRows extends StatefulWidget {
  const ClientsTableDataRows({super.key, required this.clients});

  final List<Client> clients;

  @override
  State<ClientsTableDataRows> createState() => _ClientsTableDataRowsState();
}

class _ClientsTableDataRowsState extends State<ClientsTableDataRows> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.clients.length,
        itemBuilder: (context, index) {
          final client = widget.clients[index];
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
                FabriqTableData(data: "${client.id + 1}"),
                FabriqTableData(data: "${client.firstName} ${client.lastName}", flex: 2),
                FabriqTableData(data: client.phoneNumber, flex: 2),
                FabriqTableData(data: "${client.purchasesCount}"),
                FabriqTableData(data: client.address, flex: 3),
                Flexible(
                  flex: 1,
                  child: Row(
                    spacing: 12,
                    children: [
                      FabriqIconButtonOutlined(
                        icon: "assets/icons/edit.svg",
                        color: AppColors.darkBlue,
                        callback: () => context.go(Routes.getClientUpdate(client.id)),
                      ),
                      FabriqDeleteButton(
                        text: "Mijozni o’chirishni xoxlaysizmi?",
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
