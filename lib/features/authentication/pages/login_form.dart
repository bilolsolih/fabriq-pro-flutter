import 'package:fabriq_pro/features/authentication/managers/login_bloc.dart';
import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button.dart';
import 'package:fabriq_pro/features/common/widgets/fabriq_password_form_field.dart';
import 'package:fabriq_pro/features/common/widgets/fabriq_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.loginController,
    required this.passwordController,
  });

  final TextEditingController loginController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            controller: loginController,
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
          FabriqTextButton(
            text: "Kirish",
            width: 308,
            height: 48,
            callback: () {
              context.read<LoginBloc>().add(
                LoginLoginEvent(
                  login: loginController.text.trim(),
                  password: passwordController.text.trim(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
