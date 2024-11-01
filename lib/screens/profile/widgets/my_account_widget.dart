import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pets_care_app/common/helper/app_navigator.dart';
import 'package:pets_care_app/screens/profile/update_user_screen.dart';

import '../../../core/theme/app_colors.dart';

class MyAccountWidget extends StatelessWidget {
  const MyAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        AppNavigator.push(context, UpdateUserScreen(
          initialFirstName: 'John',
          initialLastName: 'Doe',
          initialEmail: 'john.doe@example.com',
          initialContactInfo: '123-456-7890',
          initialAddress: '123 Main St, City',
          initialNumberOfCats: 2,
        ),);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: 500,
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
        child: const Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Account",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.button),
                ),
                Icon(
                  Icons.navigate_next,
                  color: AppColors.button,
                ),
              ],
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
