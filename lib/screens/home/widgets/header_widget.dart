import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pets_care_app/screens/profile/profile_screen.dart';

import '../../../common/helper/app_navigator.dart';
import '../../../core/assets/app_images.dart';
import '../../../core/assets/app_vectors.dart';
import '../../../core/theme/app_colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildProfileImage(context),
          _buildIconApp(context),
          _buildButtonCard(context),
        ],
      ),
    );
  }

  Widget _buildProfileImage(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppNavigator.push(context, ProfileScreen());
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(AppImages.profile)),
        ),
      ),
    );
  }

  Widget _buildIconApp(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(100)),
          child: const Center(
            child: SizedBox(
              height: 40,
              width: 40,
              child: Image(image: AssetImage(AppImages.logo)),
            ),
          ),
        ),
        const Text(
          "MeowCare",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15
          ),
        )
      ],
    );
  }

  Widget _buildButtonCard(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // AppNavigator.push(context, CartPage());
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          AppVectors.bag,
          fit: BoxFit.none,
          color: Colors.grey,
        ),
      ),
    );
  }
}
