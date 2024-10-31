import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../widgets/rich_text_widget.dart';

class DailyMealCountStatisticsWidget extends StatelessWidget {
  const DailyMealCountStatisticsWidget({super.key});

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
              "Daily Meal Count Statistics",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 5),
          RichTextWidget(
            title: "Number of times your cat eats: ",
            titleOnPress: "3",
          ),
          SizedBox(height: 5),
          RichTextWidget(
            title: "Food supply quantity: ",
            titleOnPress: "25 g",
          ),
          SizedBox(height: 5),
          RichTextWidget(
            title: "Average food waste: ",
            titleOnPress: "10%",
          ),
          SizedBox(height: 5),
          RichTextWidget(
            title: "Number of times your cat drinks water: ",
            titleOnPress: "7",
          ),
          SizedBox(height: 5),
          RichTextWidget(
            title: "Water supply quantity: ",
            titleOnPress: "25 ml",
          ),
          SizedBox(height: 5),
          RichTextWidget(
            title: "Average excess water: ",
            titleOnPress: "73%",
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
