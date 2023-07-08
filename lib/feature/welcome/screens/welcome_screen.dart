import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extentions/custom_theme_extention.dart';
import 'package:whatsapp_clone/common/routes/routes.dart';
import 'package:whatsapp_clone/common/utils/colors.dart';
import 'package:whatsapp_clone/common/widgets/custom_elevated_button.dart';
import 'package:whatsapp_clone/feature/welcome/widgets/language_button.dart';
import 'package:whatsapp_clone/feature/welcome/widgets/privacy_and_terms_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  navigatorTologinScreen(context) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(Routes.login, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  backgroundColor: Coloors.backgroundDark,
        body: Column(
      children: [
        Expanded(
            child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: Image.asset(
              'assets/images/circle.png',
              color: context.theme.circleImageColor,
            ),
          ),
        )),
        const SizedBox(
          height: 40,
        ),
        Expanded(
            child: Column(
          children: [
            const Text(
              'Welcome to WhatsApp',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const PrivacyAndTerms(),
            CustomElevatedButton(
              onPressed: () {
                navigatorTologinScreen(context);
              },
              text: "AGREE AND CONTINUE",
            ),
            const SizedBox(
              height: 50,
            ),
            const LanguageButton(),
          ],
        ))
      ],
    ));
  }
}
