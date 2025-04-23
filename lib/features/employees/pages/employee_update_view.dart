import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button.dart';
import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button_with_icon.dart';
import 'package:fabriq_pro/features/common/widgets/fabriq_text_form_field.dart';
import 'package:flutter/material.dart';

class EmployeeUpdateView extends StatefulWidget {
  const EmployeeUpdateView({super.key});

  @override
  State<EmployeeUpdateView> createState() => _EmployeeUpdateViewState();
}

class _EmployeeUpdateViewState extends State<EmployeeUpdateView> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Xodimni taxrirlash",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Roboto",
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 660,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shaxsiy ma'lumotlari",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Roboto",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FabriqTextFormField(
                        controller: firstNameController,
                        label: "Ism",
                        hintText: "Abdulloh",
                        width: 320,
                        height: 40,
                        validator: (value) => null,
                        isValid: null,
                      ),
                      FabriqTextFormField(
                        controller: lastNameController,
                        label: "Familiya",
                        hintText: "Abdurahmonov",
                        width: 320,
                        height: 40,
                        validator: (value) => null,
                        isValid: null,
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FabriqTextFormField(
                        controller: phoneNumberController,
                        label: "Telefon raqam",
                        hintText: "+998 99-123-45-67",
                        width: 320,
                        height: 40,
                        validator: (value) => null,
                        isValid: null,
                      ),
                      FabriqTextFormField(
                        controller: addressController,
                        label: "Manzil",
                        hintText: "Vodiy, Namangan",
                        width: 320,
                        height: 40,
                        validator: (value) => null,
                        isValid: null,
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FabriqTextButton(
                        text: "Bekor qilish",
                        width: 320,
                        height: 40,
                        foregroundColor: Colors.black,
                        backgroundColor: Color(0xFFE5E7EB),
                        callback: () {},
                      ),
                      FabriqTextButtonWithIcon(
                        title: "Qo'shish",
                        icon: "assets/icons/add_profile.svg",
                        width: 320,
                        height: 40,
                        callback: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
