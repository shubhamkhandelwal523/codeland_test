import 'package:flutter/material.dart';
import '../models/login_final_model.dart';

/// A provider class for the LoginFinalScreen.
///
/// This provider manages the state of the LoginFinalScreen, including the
/// current loginFinalModelObj
class LoginFinalProvider extends ChangeNotifier {
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  LoginFinalModel loginFinalModelObj = LoginFinalModel();

  @override
  void dispose() {
    super.dispose();
    userNameController.dispose();
    passwordController.dispose();
  }
}
