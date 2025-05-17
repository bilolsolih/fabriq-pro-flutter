import 'package:fabriq_pro/features/common/widgets/fabriq_table_header_title.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class ProductsTableHeader extends StatelessWidget {
  const ProductsTableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: AppColors.backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FabriqTableHeaderTitle(title: 'No', flex: 1),
          FabriqTableHeaderTitle(title: 'Nomi', flex: 1),
          FabriqTableHeaderTitle(title: 'Model', flex: 2),
          FabriqTableHeaderTitle(title: 'Turi', flex: 2),
          FabriqTableHeaderTitle(title: 'Rangi', flex: 2),
          FabriqTableHeaderTitle(title: 'Miqdori', flex: 2),
          FabriqTableHeaderTitle(title: 'Taxrirlash', flex: 1),
        ],
      ),
    );
  }
}
