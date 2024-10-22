import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_care_app/bloc/splash/splash_cubit.dart';
import 'package:pets_care_app/bloc/splash/splash_state.dart';
import 'package:pets_care_app/core/assets/app_images.dart';
import 'package:pets_care_app/core/theme/app_colors.dart';
import 'package:pets_care_app/screens/home/home_screen.dart';
import 'package:pets_care_app/screens/auth/sign_up_screen.dart';

import '../../common/helper/app_navigator.dart';

class SplashScreens extends StatelessWidget {
  const SplashScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(child: _buildBodySplash(context)),
    );
  }

  Widget _buildBodySplash(context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          AppNavigator.pushReplacement(context, const SignUpScreen());
        }

        if (state is Authenticated) {
          AppNavigator.pushReplacement(context, const HomeScreen());
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildLogoWelcome(),
          const SizedBox(height: 10),
          _buildTextWelcome(),
        ],
      ),
    );
  }

  Widget _buildLogoWelcome() {
    return const Center(
      child: SizedBox(
        height: 200,
        width: 200,
        child: Image(
          image: AssetImage(AppImages.logo),
        ),
      ),
    );
  }

  Widget _buildTextWelcome() {
    return const Center(
      child: Text(
        "Welcome to Pets Care",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
