import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class FoodVolumeWidget extends StatefulWidget {
  const FoodVolumeWidget({super.key});

  @override
  State<FoodVolumeWidget> createState() => _FoodVolumeWidgetState();
}

class _FoodVolumeWidgetState extends State<FoodVolumeWidget> {
  String? selectedOption;

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
        children: [
          const Text(
            "Food volume pet",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCheckboxOption(
                title: "Small",
                value: "small",
              ),
              _buildCheckboxOption(
                title: "Big",
                value: "big",
              ),
              _buildCheckboxOption(
                title: "Medium",
                value: "medium",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCheckboxOption({
    required String title,
    required String value,
  }) {
    return Row(
      children: [
        Checkbox(
          value: selectedOption == value,
          activeColor: Colors.orange,
          onChanged: (bool? newValue) {
            if (newValue == true) {
              setState(() {
                selectedOption = value;
              });
            }
          },
        ),
        Text(title),
      ],
    );
  }

}
