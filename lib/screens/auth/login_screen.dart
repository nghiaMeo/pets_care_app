import 'package:flutter/material.dart';
import 'package:pets_care_app/common/helper/app_navigator.dart';
import 'package:pets_care_app/screens/auth/forgot_password_screen.dart';
import 'package:pets_care_app/screens/home/home_screen.dart';
import 'package:pets_care_app/screens/auth/sign_up_screen.dart';

import '../../core/assets/app_images.dart';
import '../../core/theme/app_colors.dart';
import '../../widgets/basic_app_button.dart';
import '../../widgets/rich_text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const BasicAppbar(hideBack: false),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 40,
          ),
          child: CustomScrollView(slivers: [
            SliverList.list(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 100),
                    _buildText(),
                    const SizedBox(height: 20),
                    _buildEmailField(),
                    const SizedBox(height: 20),
                    _buildPasswordField(),
                    const SizedBox(height: 20),
                    const RichTextWidget(
                      title: "Forget Password? ",
                      titleOnPress: 'Rest',
                      onPage: ForgotPasswordScreen(),
                    ),
                    const SizedBox(height: 20),
                    _buildPressButton(context),
                    const SizedBox(height: 20),
                     const Center(
                      child: RichTextWidget(
                        title: "Don't you have an account? ",
                        titleOnPress: 'Create One',
                        onPage: SignUpScreen(),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }

  Widget _buildText() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                'Welcome to MeowCare',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  color: Colors.grey,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 80,
                width: 80,
                child: Image(image: AssetImage(AppImages.logo)),
              ),
            )
          ],
        ),

        Text(
          'Make your easier watch your pets',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: AppColors.button,
          ),
        ),
      ],
    );
  }

  Widget _buildEmailField() {
    return TextField(
      controller: _emailController,
      decoration: const InputDecoration(
        hintText: 'Enter Email',
      ),
    );
  }

  Widget _buildPasswordField() {
    return TextField(
      obscureText: true,
      controller: _passwordController,
      decoration: const InputDecoration(
        hintText: 'Enter Password',
      ),
    );
  }

  Widget _buildPressButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.pushAndRemove(context, const HomeScreen());
      },
      title: 'Continue',
    );
  }
}
