import 'package:flutter/material.dart';

import '../../constants/utils.dart';
import '../../home/screens/home_screen.dart';

class AuthService {
  void signInUser(
      {required BuildContext context,
      required String email,
      required String password}) async {
    if (email == "career@tech387.com" && password == "Pass123!") {
      showSnackBar(context, "Success");
      Navigator.pushNamedAndRemoveUntil(
        context,
        HomeScreen.routeName,
        (route) => false,
      );
    } else {
      showSnackBar(context, "You have to enter correct email and password");
    }
  }
}
