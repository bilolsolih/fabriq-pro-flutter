import 'package:fabriq_pro/data/models/product/product_model.dart';
import 'package:fabriq_pro/features/storage/pages/products/product_update_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../../../common/widgets/buttons/fabriq_delete_button.dart';
import '../../../common/widgets/buttons/fabriq_icon_button_outlined.dart';
import '../../../common/widgets/fabriq_table_data.dart';

class ProductsTableDataRows extends StatefulWidget {
  const ProductsTableDataRows({super.key, required this.products});

  final List<Product> products;

  @override
  State<ProductsTableDataRows> createState() => _ProductsTableDataRowsState();
}

class _ProductsTableDataRowsState extends State<ProductsTableDataRows> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.products.length,
        itemBuilder: (context, index) {
          final product = widget.products[index];
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
                FabriqTableData(data: "#${product.id}"),
                FabriqTableData(data: product.title),
                FabriqTableData(data: product.model),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(int.parse(product.colorHex)),
                          borderRadius: BorderRadius.circular(20),
                          border:
                              product.colorHex == "0xFFFFFFFF"
                                  ? Border.all(color: Colors.black, width: 1)
                                  : null,
                        ),
                      ),
                    ],
                  ),
                ),
                FabriqTableData(data: "${product.quantity} dona"),
                Flexible(
                  flex: 1,
                  child: Row(
                    spacing: 12,
                    children: [
                      FabriqIconButtonOutlined(
                        icon: "assets/icons/edit.svg",
                        color: AppColors.darkBlue,
                        callback: () async {
                          await showDialog(
                            context: context,
                            builder: (context) => ProductUpdateView(),
                          );
                        },
                      ),
                      FabriqDeleteButton(
                        text: "Mijozni o’chirishni xoxlaysizmi?",
                        icon: "assets/icons/delete.svg",
                        color: Color(0xFFF64848),
                        callback: () {},
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
