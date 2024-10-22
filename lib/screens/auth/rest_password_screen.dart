import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pets_care_app/screens/auth/login_screen.dart';


import '../../common/helper/app_navigator.dart';
import '../../core/assets/app_vectors.dart';
import '../../widgets/basic_app_button.dart';

class RestPasswordScreen extends StatelessWidget {
  const RestPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: BasicAppbar(hideBack: true),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 40,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                _buildSvgSentEmail(),
                const SizedBox(height: 20),
                _buildText(),
                const SizedBox(height: 20),
                _buildPressButton(context),
                const Spacer(),
              ],
            )),
      ),
    );
  }

  Widget _buildSvgSentEmail() {
    return SvgPicture.asset(
      AppVectors.emailSending,
      width: 150
    );
  }

  Widget _buildText() {
    return const Text(
      'We Sent you an Email to reset your password.',
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 24,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildPressButton(BuildContext context) {
    return BasicAppButton(
        onPressed: () {
          AppNavigator.pushReplacement(context, const LoginScreen());
        },
        width: 200,
        title: 'Return to Login');
  }
}
