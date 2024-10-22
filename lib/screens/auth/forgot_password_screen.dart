import 'package:flutter/material.dart';
import 'package:pets_care_app/common/helper/app_navigator.dart';
import 'package:pets_care_app/screens/auth/rest_password_screen.dart';
import 'package:pets_care_app/widgets/basic_app_button.dart';

import '../../widgets/app_bar_widget.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordScreen> {
  final TextEditingController _resetEmailController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _resetEmailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildText(),
              const SizedBox(height: 20),
              _buildTextField(),
              const SizedBox(height: 20),
              _buildPressButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildText() {
    return const Text(
      'Forgot Password',
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 32,
      ),
    );
  }

  Widget _buildTextField() {
    return TextField(
      obscureText: false,
      controller: _resetEmailController,
      decoration: const InputDecoration(
        hintText: 'Enter Email Address',
      ),
    );
  }

  Widget _buildPressButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(context, const RestPasswordScreen());
      },
      title: "Continue",
    );
  }
}
