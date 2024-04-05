import 'package:flutter/material.dart';
import '../models/splash_final_model.dart';

/// A provider class for the SplashFinalScreen.
///
/// This provider manages the state of the SplashFinalScreen, including the
/// current splashFinalModelObj

// ignore_for_file: must_be_immutable
class SplashFinalProvider extends ChangeNotifier {
  SplashFinalModel splashFinalModelObj = SplashFinalModel();

  @override
  void dispose() {
    super.dispose();
  }
}
