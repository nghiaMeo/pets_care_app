import 'package:flutter/material.dart';
import 'package:pets_care_app/core/assets/app_images.dart';
import 'package:pets_care_app/screens/auth/login_screen.dart';
import 'package:pets_care_app/widgets/basic_app_button.dart';
import 'package:pets_care_app/screens/home/home_screen.dart';

import '../../widgets/rich_text_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildText(),
                      const SizedBox(height: 30),
                      _buildTextField(
                        hintText: 'First Name',
                        controller: _firstNameController,
                      ),
                      const SizedBox(height: 20),
                      _buildTextField(
                        hintText: 'Last Name',
                        controller: _lastNameController,
                      ),
                      const SizedBox(height: 20),
                      _buildTextField(
                        hintText: 'Email Address',
                        controller: _emailController,
                      ),
                      const SizedBox(height: 20),
                      _buildTextField(
                        hintText: 'Password',
                        isPassword: true,
                        controller: _passwordController,
                      ),
                      const SizedBox(height: 20),
                      _buildPressButton(context),
                      const SizedBox(height: 20),
                      const RichTextWidget(
                          title: " Already have an account? ",
                          titleOnPress: 'Login',
                          onPage: LoginScreen())
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildText() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Create Account',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 60,
              width: 60,
              child: Image(image: AssetImage(AppImages.logo)),
            )
          ],
        ),
        Text(
          "Create your account on MeowCare to access",
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
        )
      ],
    );
  }

  Widget _buildTextField(
      {required String hintText,
      required TextEditingController controller,
      bool? isPassword}) {
    return TextField(
      obscureText: isPassword ?? false,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }

  Widget _buildPressButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {},
      title: 'Sign Up',
    );
  }
}
