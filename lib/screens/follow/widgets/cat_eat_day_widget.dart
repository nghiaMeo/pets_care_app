import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../widgets/rich_text_widget.dart';

class CatEatDayWidget extends StatelessWidget {
  const CatEatDayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: 500,
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Information About Meals/Day",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          RichTextWidget(
            title: "Number of times your cat eats per day: ",
            titleOnPress: "3/8",
          ),
          SizedBox(
            height: 5,
          ),
          RichTextWidget(
            title: "Number of times a day provides drinking water: ",
            titleOnPress: "3/8",
          ),
          SizedBox(
            height: 5,
          ),
          RichTextWidget(
            title: "amount of food per meal: ",
            titleOnPress: "58 gram",
          ),
          SizedBox(
            height: 5,
          ),
          RichTextWidget(
            title: "amount of water in per meal: ",
            titleOnPress: "3",
          ),
          SizedBox(
            height: 5,
          ),
          RichTextWidget(
            title: "amount of food stored: ",
            titleOnPress: "73%",
          ),

        ],
      ),
    );
  }
}
