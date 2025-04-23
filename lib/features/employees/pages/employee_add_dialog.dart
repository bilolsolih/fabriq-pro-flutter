import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button.dart';
import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button_with_icon.dart';
import 'package:fabriq_pro/features/common/widgets/fabriq_text_form_field.dart';
import 'package:fabriq_pro/features/employees/pages/fabriq_user_role_selector.dart';
import 'package:flutter/material.dart';

class EmployeeAddDialog extends StatefulWidget {
  const EmployeeAddDialog({super.key});

  @override
  State<EmployeeAddDialog> createState() => _EmployeeAddDialogState();
}

class _EmployeeAddDialogState extends State<EmployeeAddDialog> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final addressController = TextEditingController();

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
              "Yangi xodim qo'shish",
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
                  label: "Ism",
                  hintText: "Abdulloh",
                  width: 250,
                  height: 40,
                  validator: (value) => null,
                  isValid: null,
                ),
                FabriqTextFormField(
                  controller: lastNameController,
                  label: "Familiya",
                  hintText: "Abdurahmonov",
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
                  label: "Telefon raqam",
                  hintText: "+998 99-123-45-67",
                  width: 250,
                  height: 40,
                  validator: (value) => null,
                  isValid: null,
                ),
                FabriqTextFormField(
                  controller: addressController,
                  label: "Manzil",
                  hintText: "Vodiy, Namangan",
                  width: 250,
                  height: 40,
                  validator: (value) => null,
                  isValid: null,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [FabriqUserRoleSelector()],
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
