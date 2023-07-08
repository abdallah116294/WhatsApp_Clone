import 'package:flutter/material.dart';

class VerifcationScreen extends StatefulWidget {
  final String verificationId;
  final String phoneNumber;
  const VerifcationScreen({super.key, required this.verificationId, required this.phoneNumber});

  @override
  State<VerifcationScreen> createState() => _VerifcationScreenState();
}

class _VerifcationScreenState extends State<VerifcationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
