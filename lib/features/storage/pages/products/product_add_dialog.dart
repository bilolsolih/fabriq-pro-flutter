import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button.dart';
import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button_with_icon.dart';
import 'package:fabriq_pro/features/common/widgets/fabriq_text_form_field.dart';
import 'package:fabriq_pro/features/storage/managers/products/products_bloc.dart';
import 'package:fabriq_pro/features/storage/managers/products/products_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/products/fabriq_product_name_selector.dart';

class ProductAddDialog extends StatefulWidget {
  const ProductAddDialog({super.key});

  @override
  State<ProductAddDialog> createState() => _ProductAddDialogState();
}

class _ProductAddDialogState extends State<ProductAddDialog> {
  final nameController = TextEditingController();
  final roleController = TextEditingController();
  final quantityController = TextEditingController();
  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        List<String> productTitles = state.productTypes.map((e) => e.title).toList();
        List<String> productModels = state.productModels.map((e) => e.title).toList();
        return Dialog(
          child: Container(
            width: 600,
            height: 339,
            padding: EdgeInsets.all(40),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Yangi mahsulot qo'shish",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Divider(color: Color(0xFFD9D9D9), height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FabriqProductNameSelector(productNames: productTitles, title: "Nomi",),
                    FabriqProductNameSelector(productNames: productModels, title: "Modeli",),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FabriqTextFormField(
                      controller: quantityController,
                      label: "Miqdori",
                      hintText: "100 dona",
                      width: 250,
                      height: 40,
                      validator: (value) => null,
                      isValid: null,
                    ),
                  ],
                ),
                Divider(color: Color(0xFFD9D9D9), height: 1),
                Row(
                  spacing: 20,
                  children: [
                    FabriqTextButton(
                      text: "Bekor qilish",
                      width: 250,
                      height: 40,
                      foregroundColor: Colors.black,
                      backgroundColor: Color(0xFFE5E7EB),
                      callback: () {},
                    ),
                    FabriqTextButtonWithIcon(
                      title: "Qo'shish",
                      icon: "assets/icons/add_profile.svg",
                      width: 250,
                      height: 40,
                      callback: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
