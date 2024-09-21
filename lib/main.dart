import 'package:flutter/material.dart';

import 'senior_code_app.dart';

void main() async {
  // Ensures that the binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Simulate a delay for the splash screen
  await Future.delayed(
    const Duration(seconds: 5),
  );

  runApp(
    const SeniorCodeApp(),
  );
}
