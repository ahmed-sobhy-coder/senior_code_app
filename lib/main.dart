import 'package:flutter/material.dart';

import 'senior_code_app.dart';

void main() async {
  // Ensures that the binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  //  A delay for the splash screen
  await Future.delayed(
    const Duration(seconds: 2),
  );

  runApp(
    const SeniorCodeApp(),
  );
}
