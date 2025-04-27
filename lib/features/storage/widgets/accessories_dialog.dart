import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button.dart';
import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button_with_icon.dart';
import 'package:fabriq_pro/features/common/widgets/fabriq_text_form_field.dart';
import 'package:fabriq_pro/features/employees/pages/fabriq_user_role_selector.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AccessoriesDialog extends StatefulWidget {
  const AccessoriesDialog({super.key});

  @override
  State<AccessoriesDialog> createState() => _AccessoriesDialog();
}

class _AccessoriesDialog extends State<AccessoriesDialog> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final addressController = TextEditingController();
  String _selectedUnit = 'g';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 600,
        height: 380,
        padding: EdgeInsets.all(40),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Aksesuar qo'shish",
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
                  controller: firstNameController,
                  label: "Nomi",
                  hintText: "Xb",
                  width: 250,
                  height: 40,
                  validator: (value) => null,
                  isValid: null,
                ),
                FabriqTextFormField(
                  controller: lastNameController,
                  label: "Modeli",
                  hintText: "AA-2121",
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
                  controller: phoneNumberController,
                  label: "Kimga",
                  hintText: "Bazarov Jahongir",
                  width: 250,
                  height: 40,
                  validator: (value) => null,
                  isValid: null,
                ),
                FabriqTextFormField(
                  controller: addressController,
                  label: "Roli",
                  hintText: "Tikuv Master",
                  width: 250,
                  height: 40,
                  validator: (value) => null,
                  isValid: null,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FabriqTextFormField(
                  controller: addressController,
                  label: "Miqdori",
                  hintText: "100",
                  width: 250,
                  height: 40,
                  validator: (value) => null,
                  isValid: null,
                ),
                DropdownButton<String>(
                  value: _selectedUnit,
                  items: ['g', 'kg'].map((String unit) {
                    return DropdownMenuItem<String>(
                      value: unit,
                      child: Text(unit),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedUnit = newValue!;
                    });
                  },
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
                  callback: () {
                    context.pop();
                  },
                ),
                FabriqTextButtonWithIcon(
                  title: "Qo'shish",
                  icon: "assets/icons/add_profile.svg",
                  width: 250,
                  height: 40,
                  callback: () {
                    context.pop();
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
