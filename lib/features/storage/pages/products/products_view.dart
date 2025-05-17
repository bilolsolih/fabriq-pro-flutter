import 'package:fabriq_pro/features/storage/managers/products/products_bloc.dart';
import 'package:fabriq_pro/features/storage/managers/products/products_state.dart';
import 'package:fabriq_pro/features/storage/pages/products/product_add_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/widgets/fabriq_body_header.dart';
import '../../widgets/products/products_table_data_rows.dart';
import '../../widgets/products/products_table_header.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
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
              title: "Tayyor Mahsulotlar",
              icon: "assets/icons/add_profile.svg",
              buttonTitle: "Mahsulot qo'shish",
              filterCallback: () {},
              buttonCallback: () async {
                await showDialog(
                  context: context,
                  builder:
                      (context) => BlocProvider(
                        create: (BuildContext context) => ProductsBloc(productRepo: context.read()),
                        child: ProductAddDialog(),
                      ),
                );
              },
            ),
            ProductsTableHeader(),

            BlocBuilder<ProductsBloc, ProductsState>(
              builder: (context, state) => ProductsTableDataRows(products: state.products),
            ),
          ],
        ),
      ),
    );
  }
}
