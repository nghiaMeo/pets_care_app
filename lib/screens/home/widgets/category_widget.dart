import 'package:flutter/material.dart';
import 'package:pets_care_app/common/helper/app_navigator.dart';
import 'package:pets_care_app/core/theme/app_colors.dart';
import 'package:pets_care_app/screens/follow/follow_pets_screen.dart';

import '../../../core/assets/app_images.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(alignment: Alignment.centerLeft, child: _buildText()),
          const SizedBox(height: 20),
          _buildViewProducts(context)
        ],
      ),
    );
  }

  Widget _buildText() {
    return const Text(
      "Choose Your Meow",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }

  Widget _buildViewProducts(context) {
    return GestureDetector(
      onTap: (){
        AppNavigator.push(context, const FollowPetsScreen());
      },
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          color: AppColors.primary.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16), // Bo góc
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Màu bóng
              spreadRadius: 5,
              blurRadius: 15,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child:  Column(
          children: [
             const Image(image: AssetImage(AppImages.meow), fit: BoxFit.fitHeight),
            _buildRow(),

          ],
        ),
      ),
    );
  }


  Widget _buildRow() {
    return const  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Potato',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'British Longhair Cat',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.button,

              ),

            )
          ],
        ),
        Icon(Icons.camera_alt_outlined,
        color: AppColors.button,)
      ],
    );
  }

}
