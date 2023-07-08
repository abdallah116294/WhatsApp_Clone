import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/routes/routes.dart';
import 'package:whatsapp_clone/common/theme/dark_theme.dart';
import 'package:whatsapp_clone/common/theme/light_theme.dart';
import 'package:whatsapp_clone/feature/auth/screen/login_screen.dart';
import 'package:whatsapp_clone/feature/auth/screen/user_info_screen.dart';
import 'package:whatsapp_clone/feature/welcome/screens/welcome_screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.c
  // );
  await Firebase.initializeApp;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Whatsapp Demo',
        debugShowCheckedModeBanner: false,
        theme: LightTheme(),
        darkTheme: darkTheme(),
        themeMode: ThemeMode.system,
        onGenerateRoute:  Routes.onGenerateRoute,
        home: const WelcomeScreen());
  }
}
