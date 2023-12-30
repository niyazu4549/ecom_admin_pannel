// main.dart
import 'package:ecom_admin_panel_web/views/home_screen.dart';
import 'package:ecom_admin_panel_web/views/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EcomWebApp());
}

class EcomWebApp extends StatelessWidget {
  // Using "static" so that we can easily access it later
  static final ValueNotifier<ThemeMode> themeNotifier =
  ValueNotifier(ThemeMode.light);

  const EcomWebApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            // Remove the debug banner
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primarySwatch: Colors.blue),
            darkTheme: ThemeData.dark(),
            themeMode: currentMode,
            home: HomeScreen(),
          );
        });
  }
}