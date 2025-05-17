import 'package:fabriq_pro/features/common/widgets/fabriq_body_header_with_history.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';
import '../../common/widgets/fabriq_table_header_title.dart';

class ClothesDetailView extends StatelessWidget {
  const ClothesDetailView({super.key});

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
            FabriqBodyHeaderWithHistory(
              title: "Barcha Materiallar",
              icon: "assets/icons/add_profile.svg",
              buttonTitle: "Qo'shish",
              filterCallback: () {},
              buttonCallback: () {},
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
                  FabriqTableHeaderTitle(title: "Partiyasi", flex: 1),
                  FabriqTableHeaderTitle(title: "Kimdan", flex: 2),
                  FabriqTableHeaderTitle(title: "Roli", flex: 1),
                  FabriqTableHeaderTitle(title: "Miqdori", flex: 1),
                  FabriqTableHeaderTitle(title: "Sana", flex: 1),
                  FabriqTableHeaderTitle(title: "Taxrirlash", flex: 1),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
