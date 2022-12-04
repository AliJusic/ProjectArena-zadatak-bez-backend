import "package:flutter/material.dart";

import '../../common/widgets/custom_button.dart';
import '../../common/widgets/custom_textfield.dart';
import 'package:passwordfield/passwordfield.dart';
import '../services/auth_service.dart';

enum Auth { signin }

class AuthScreen extends StatefulWidget {
  static const String routeName = "/auth-screen";
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _signInFormKey = GlobalKey<FormState>();

  final AuthService authService = AuthService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void signInUser() {
    authService.signInUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          color: Colors.white,
          child: Form(
            key: _signInFormKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/logo2.png",
                  width: 400,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "E-mail",
                  ),
                ),
                CustomTextField(
                  controller: _emailController,
                  hintText: "Email",
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Password",
                  ),
                ),
                PasswordField(
                  controller: _passwordController,
                  hintText: "Password",
                  passwordConstraint: "Pass123!",
                ),
                const SizedBox(height: 10),
                CustomButton(
                    text: "Login",
                    onTap: () {
                      signInUser();
                    }),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
