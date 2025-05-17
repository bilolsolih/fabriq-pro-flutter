import 'package:fabriq_pro/core/routing/routes.dart';
import 'package:fabriq_pro/features/authentication/managers/login_bloc.dart';
import 'package:fabriq_pro/features/authentication/managers/login_state.dart';
import 'package:fabriq_pro/features/authentication/pages/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.status == LoginStatus.success) {
            context.go(Routes.employees);
          } else if (state.status == LoginStatus.error) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.errorMessage!)));
          }
        },
        builder: (context, state) {
          if (state.status == LoginStatus.loading) {
            return Center(child: CircularProgressIndicator());
          } else {
            return SizedBox.expand(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/login.png",
                    width: 593,
                    height: 593,
                    fit: BoxFit.cover,
                  ),
                  LoginForm(
                    loginController: loginController,
                    passwordController: passwordController,
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
