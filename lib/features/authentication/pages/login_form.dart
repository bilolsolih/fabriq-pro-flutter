import 'package:fabriq_pro/features/authentication/managers/login_bloc.dart';
import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button.dart';
import 'package:fabriq_pro/features/common/widgets/fabriq_password_form_field.dart';
import 'package:fabriq_pro/features/common/widgets/fabriq_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      width: 444.spMin,
      height: 510.spMin,
      color: Colors.white,
      child: Column(
        spacing: 20.spMin,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 40.spMin, bottom: 20.spMin),
            child: SvgPicture.asset("assets/icons/logo.svg"),
          ),
          FabriqTextFormField(
            controller: loginController,
            label: "Telefon raqam",
            hintText: "+998",
            validator: (value) => null,
            isValid: null,
            width: 308.spMin,
            height: 48.spMin,
          ),
          FabriqPasswordFormField(
            controller: passwordController,
            label: "Parol",
            hintText: "",
            validator: (value) => null,
            isValid: null,
            width: 308.spMin,
            height: 48.spMin,
          ),
          FabriqTextButton(
            text: "Kirish",
            width: 308.spMin,
            height: 48.spMin,
            fontSize: 16.spMin,
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
