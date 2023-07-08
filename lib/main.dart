import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/theme/dark_theme.dart';
import 'package:whatsapp_clone/common/theme/light_theme.dart';
import 'package:whatsapp_clone/feature/auth/screen/login_screen.dart';
import 'package:whatsapp_clone/feature/welcome/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Whatsapp Demo',
     debugShowCheckedModeBanner: false,
     theme: LightTheme(),
     darkTheme: darkTheme(),
     themeMode: ThemeMode.system,
      home: const LoginScreen()
    );
  }
}

