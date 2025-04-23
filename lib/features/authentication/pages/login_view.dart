import 'package:fabriq_pro/features/common/widgets/fabriq_password_form_field.dart';
import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button.dart';
import 'package:fabriq_pro/features/common/widgets/fabriq_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/login.png", width: 593, height: 593, fit: BoxFit.cover),
            Container(
              width: 444,
              height: 510,
              color: Colors.white,
              child: Column(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40, bottom: 20),
                    child: SvgPicture.asset("assets/icons/logo.svg"),
                  ),
                  FabriqTextFormField(
                    controller: phoneNumberController,
                    label: "Telefon raqam",
                    hintText: "+998",
                    validator: (value) => null,
                    isValid: null,
                  ),
                  FabriqPasswordFormField(
                    controller: passwordController,
                    label: "Parol",
                    hintText: "",
                    validator: (value) => null,
                    isValid: null,
                  ),
                  FabriqTextButton(text: "Kirish", width: 308, height: 48, callback: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
