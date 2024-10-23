import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pets_care_app/common/app_bottom_sheet.dart';
import 'package:pets_care_app/widgets/rich_text_widget.dart';
import 'package:pets_care_app/widgets/wheel_scroll_time_widget.dart';

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
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const RichTextWidget(

                title: 'Morning: ', titleOnPress: '08:10 AM',
              ),
              IconsButtonWidget(
                icon: Icons.settings,
                color: Colors.white,
                backgroundColor: Colors.grey,
                onTap: () {
                  AppBottomSheet.display(context, const WheelScrollTimeWidget());

                },
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const RichTextWidget(

                 title: 'Afternoon: ', titleOnPress: '12:00 AM',
              ),
              IconsButtonWidget(
                icon: Icons.settings,
                color: Colors.white,
                backgroundColor: Colors.grey,
                onTap: () {
                  AppBottomSheet.display(context, const WheelScrollTimeWidget());
                },
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const RichTextWidget(
                title: 'Evening: ', titleOnPress: '08:30 PM',
              ),
              IconsButtonWidget(
                icon: Icons.settings,
                color: Colors.white,
                backgroundColor: Colors.grey,
                onTap: () {
                  AppBottomSheet.display(context, const WheelScrollTimeWidget());
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
