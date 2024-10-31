
import 'package:flutter/material.dart';
import 'package:pets_care_app/common/app_bottom_sheet.dart';
import 'package:pets_care_app/widgets/rich_text_widget.dart';
import 'package:pets_care_app/widgets/wheel_scroll_food_widget.dart';
import 'package:pets_care_app/widgets/wheel_scroll_number_time_widget.dart';
import 'package:pets_care_app/widgets/wheel_scroll_times_widget.dart';

import '../../../core/theme/app_colors.dart';
import '../../../widgets/icons_button_widget.dart';

class TimeFoodWidget extends StatelessWidget {
  const TimeFoodWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Pet feeding time",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const RichTextWidget(

                title: 'Number of times: ', titleOnPress: '08',
              ),
              IconsButtonWidget(
                icon: Icons.settings,
                color: Colors.white,
                backgroundColor: Colors.grey,
                onTap: () {
                  AppBottomSheet.display(context, const WheelScrollNumberTimeWidget ());

                },
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const RichTextWidget(

                 title: 'Volume per serving: ', titleOnPress: '50 g',
              ),
              IconsButtonWidget(
                icon: Icons.settings,
                color: Colors.white,
                backgroundColor: Colors.grey,
                onTap: () {
                  AppBottomSheet.display(context, const WheelScrollFoodWidget());
                },
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const RichTextWidget(
                title: 'Feeding interval: ', titleOnPress: '04 hours 30 minutes',
              ),
              IconsButtonWidget(
                icon: Icons.settings,
                color: Colors.white,
                backgroundColor: Colors.grey,
                onTap: () {
                  AppBottomSheet.display(context, const WheelScrollTimesWidget());
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }



}
