import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button.dart';
import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button_with_icon.dart';
import 'package:fabriq_pro/features/common/widgets/fabriq_text_form_field.dart';
import 'package:flutter/material.dart';

class ProductUpdateView extends StatefulWidget {
  const ProductUpdateView({super.key});

  @override
  State<ProductUpdateView> createState() => _ProductUpdateViewState();
}

class _ProductUpdateViewState extends State<ProductUpdateView> {
  final nameController = TextEditingController();
  final roleController = TextEditingController();
  final quantityController = TextEditingController();
  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                FabriqTextFormField(
                  controller: nameController,
                  label: "Nomi",
                  hintText: "Ko'ylak",
                  width: 250, height: 40,
                  validator: (value) => null,
                  isValid: null,
                ),
                FabriqTextFormField(
                  controller: roleController,
                  label: "Roli",
                  hintText: "Tikuv Master",
                  width: 250, height: 40,
                  validator: (value) => null,
                  isValid: null,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FabriqTextFormField(
                  controller: quantityController,
                  label: "Miqdori",
                  hintText: "100 dona",
                  width: 250, height: 40,
                  validator: (value) => null,
                  isValid: null,
                ),
                FabriqTextFormField(
                  controller: addressController,
                  label: "Manzil",
                  hintText: "Vodiy, Namangan",
                  width: 250, height: 40,
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
  }
}
