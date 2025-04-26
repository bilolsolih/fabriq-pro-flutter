import 'package:fabriq_pro/core/utils/colors.dart';
import 'package:fabriq_pro/core/utils/icons.dart';
import 'package:fabriq_pro/features/clients/pages/client_add_dialog.dart';
import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button.dart';
import 'package:fabriq_pro/features/common/widgets/fabriq_body_header_with_history.dart';
import 'package:fabriq_pro/features/common/widgets/fabriq_table_data.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/buttons/fabriq_delete_button.dart';
import '../../common/widgets/buttons/fabriq_icon_button_outlined.dart';
import '../../common/widgets/fabriq_table_header_title.dart';

class SparePartsView extends StatefulWidget {
  const SparePartsView({super.key});

  @override
  State<SparePartsView> createState() => _SparePartsViewState();
}

class _SparePartsViewState extends State<SparePartsView> {
  List<Map<String, dynamic>> items = List.generate(
      10,
      (index) => {
            "name": "synthetic",
            "model": "AB-454${index + 1}",
            "status": index % 2 == 0 ? "keldi" : "ketdi",
            "kimdan": "Bekzod Temirbekov",
            "roli": "Master",
            "miqdori": index % 3 == 0 ? "8${index + 1} kg" : "8${index + 1} dona",
            "sana": "1${index + 1}.02.2025",
          });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppColors.borderContainer,
            width: 1,
          ),
        ),
        child: Column(
          children: [
            FabriqBodyHeaderWithHistory(
              title: "Barcha extiyot qismlar (${items.length})",
              buttonTitle: "Qo'shish",
              icon: AppIcons.addButton,
              filterCallback: () {},
              buttonCallback: () {
                showDialog(
                  context: context,
                  builder: (context) => ClientAddDialog(),
                );
              },
            ),
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: AppColors.backgroundColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FabriqTableHeaderTitle(title: "ID", flex: 1),
                  FabriqTableHeaderTitle(title: "Nomi", flex: 1),
                  FabriqTableHeaderTitle(title: "Modeli", flex: 1),
                  FabriqTableHeaderTitle(title: "Status", flex: 1),
                  FabriqTableHeaderTitle(title: "Kimdan", flex: 2),
                  FabriqTableHeaderTitle(title: "Roli", flex: 1),
                  FabriqTableHeaderTitle(title: "Miqdori", flex: 1),
                  FabriqTableHeaderTitle(title: "Sana", flex: 1),
                  FabriqTableHeaderTitle(title: "Taxrirlash", flex: 1),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Container(
                    height: 60,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(color: AppColors.borderContainer, width: 1),
                        bottom: BorderSide(color: AppColors.borderContainer, width: 1),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FabriqTableData(data: "${index + 1}"),
                        FabriqTableData(data: item["name"], flex: 1),
                        FabriqTableData(data: item["model"]),
                        FabriqTableData(data: item["status"]),
                        FabriqTableData(data: item["kimdan"], flex: 2),
                        FabriqTableData(data: item["roli"]),
                        FabriqTableData(data: item["miqdori"]),
                        FabriqTableData(data: item["sana"]),
                        Flexible(
                          flex: 1,
                          child: Row(
                            children: [
                              FabriqIconButtonOutlined(
                                icon: AppIcons.edit,
                                color: AppColors.darkBlue,
                                callback: () {},
                              ),
                              SizedBox(width: 8),
                              FabriqDeleteButton(
                                text: "Mijozni o’chirishni xoxlaysizmi?",
                                icon: AppIcons.delete,
                                color: Color(0xFFF64848),
                                callback: () {
                                  setState(() {
                                    items.removeAt(index);
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
