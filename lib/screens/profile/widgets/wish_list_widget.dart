import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class WishListWidget extends StatelessWidget {
  const WishListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        log("Wish List");
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
                  "Wish List",
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
