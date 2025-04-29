import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button.dart';
import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button_with_icon.dart';
import 'package:fabriq_pro/features/common/widgets/fabriq_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/miscellaneous/miscellaneous_model.dart';

class MiscItemUpdateDialog extends StatefulWidget {
  final Miscellaneous item;

  const MiscItemUpdateDialog({super.key, required this.item});

  @override
  State<MiscItemUpdateDialog> createState() => _MiscItemUpdateDialogState();
}

class _MiscItemUpdateDialogState extends State<MiscItemUpdateDialog> {
  late TextEditingController nameController;
  late TextEditingController modelController;
  late TextEditingController detailController;
  late TextEditingController quantityController;
  late TextEditingController dateController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.item.name);
    modelController = TextEditingController(text: widget.item.model);
    detailController = TextEditingController(text: widget.item.detail);
    quantityController = TextEditingController(text: widget.item.quantity);
    dateController = TextEditingController(text: widget.item.date);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 600,
        height: 420,
        padding: const EdgeInsets.all(40),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Mahsulotni tahrirlash",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Roboto",
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Divider(color: Color(0xFFD9D9D9), height: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FabriqTextFormField(
                  controller: nameController,
                  label: "Nomi",
                  hintText: "Igna",
                  width: 250,
                  height: 40,
                  validator: (value) => null,
                  isValid: null,
                ),
                FabriqTextFormField(
                  controller: modelController,
                  label: "Model",
                  hintText: "1234",
                  width: 250,
                  height: 40,
                  validator: (value) => null,
                  isValid: null,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FabriqTextFormField(
                  controller: detailController,
                  label: "Detal",
                  hintText: "Zamok",
                  width: 250,
                  height: 40,
                  validator: (value) => null,
                  isValid: null,
                ),
                FabriqTextFormField(
                  controller: quantityController,
                  label: "Soni",
                  hintText: "100 dona",
                  width: 250,
                  height: 40,
                  validator: (value) => null,
                  isValid: null,
                ),
              ],
            ),
            FabriqTextFormField(
              controller: dateController,
              label: "Sana",
              hintText: "10.03.2025",
              width: double.infinity,
              height: 40,
              validator: (value) => null,
              isValid: null,
            ),
            const Divider(color: Color(0xFFD9D9D9), height: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FabriqTextButton(
                  text: "Bekor qilish",
                  width: 250,
                  height: 40,
                  foregroundColor: Colors.black,
                  backgroundColor: const Color(0xFFE5E7EB),
                  callback: () {
                    Navigator.of(context).pop();
                  },
                ),
                FabriqTextButtonWithIcon(
                  title: "Saqlash",
                  icon: "assets/icons/edit_profile.svg",
                  width: 250,
                  height: 40,
                  callback: () {
                    final updatedItem = Miscellaneous(
                      id: widget.item.id,
                      name: nameController.text,
                      model: modelController.text,
                      detail: detailController.text,
                      quantity: quantityController.text,
                      date: dateController.text,
                    );
                    Navigator.of(context).pop(updatedItem);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
