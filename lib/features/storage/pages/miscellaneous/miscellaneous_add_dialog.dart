import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button.dart';
import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button_with_icon.dart';
import 'package:fabriq_pro/features/common/widgets/fabriq_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../../../data/models/miscellaneous/miscellaneous_model.dart';

class MiscItemAddDialog extends StatefulWidget {
  final int nextId;
  const MiscItemAddDialog({super.key, required this.nextId});

  @override
  State<MiscItemAddDialog> createState() => _MiscItemAddDialogState();
}

class _MiscItemAddDialogState extends State<MiscItemAddDialog> {
  final nameController = TextEditingController();
  final modelController = TextEditingController();
  final detailController = TextEditingController();
  final quantityController = TextEditingController();
  final dateController = TextEditingController();

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
              "Yangi mahsulot qo'shish",
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
                  width: 250, height: 40,
                  validator: (value) => null,
                  isValid: null,
                ),
                FabriqTextFormField(
                  controller: modelController,
                  label: "Model",
                  hintText: "1234",
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
                  controller: detailController,
                  label: "Detal",
                  hintText: "Zamok",
                  width: 250, height: 40,
                  validator: (value) => null,
                  isValid: null,
                ),
                FabriqTextFormField(
                  controller: quantityController,
                  label: "Soni",
                  hintText: "100 dona",
                  width: 250, height: 40,
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
                  title: "Qo'shish",
                  icon: "",
                  width: 250,
                  height: 40,
                  callback: () {
                    final newItem = Miscellaneous(
                      id: widget.nextId,
                      name: nameController.text,
                      model: modelController.text,
                      detail: detailController.text,
                      quantity: quantityController.text,
                      date: dateController.text,
                    );
                    Navigator.of(context).pop(newItem);
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
