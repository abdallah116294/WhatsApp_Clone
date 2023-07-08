import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/feature/auth/screen/login_screen.dart';
import 'package:whatsapp_clone/feature/auth/screen/user_info_screen.dart';
import 'package:whatsapp_clone/feature/auth/screen/verification_screen.dart';
import 'package:whatsapp_clone/feature/welcome/screens/welcome_screen.dart';

class Routes {
  static const String welcome = 'welcome';
  static const String login = 'login';
  static const String verification = 'verification';
  static const String userInfo = 'user-info';
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(builder: (context) => const WelcomeScreen());
      case login:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case userInfo:
        return MaterialPageRoute(builder: (context) => const UserInfoScreen());
      case verification:
        final Map args = settings.arguments as Map;
        return MaterialPageRoute(
            builder: (context) => VerifcationScreen(
                verificationId: args['verificationId'], phoneNumber: args['phoneNumber']));
      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(child: Text('No Page Route Provided')),
                ));
    }
  }
}
