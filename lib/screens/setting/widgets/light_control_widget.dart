import 'package:flutter/material.dart';
import 'package:pets_care_app/widgets/wheel_scroll_time_system_widget.dart';

import '../../../common/app_bottom_sheet.dart';
import '../../../core/theme/app_colors.dart';
import '../../../widgets/icons_button_widget.dart';
import '../../../widgets/rich_text_widget.dart';

class LightControlWidget extends StatefulWidget {
  const LightControlWidget({super.key});

  @override
  State<LightControlWidget> createState() => _ElectricalSystemWidgetState();
}

class _ElectricalSystemWidgetState extends State<LightControlWidget> {
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
            "Light Control",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const RichTextWidget(
                title: 'On times: ',
                titleOnPress: '06:00 AM',
              ),
              IconsButtonWidget(
                icon: Icons.settings,
                color: Colors.white,
                backgroundColor: Colors.grey,
                onTap: () {
                  AppBottomSheet.display(
                      context, const WheelScrollTimeSystemWidget());
                },
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const RichTextWidget(
                title: 'Off times: ',
                titleOnPress: '11:00 PM',
              ),
              IconsButtonWidget(
                icon: Icons.settings,
                color: Colors.white,
                backgroundColor: Colors.grey,
                onTap: () {
                  AppBottomSheet.display(
                      context, const WheelScrollTimeSystemWidget());
                },
              ),
            ],
          ),
          const SizedBox(height: 5),
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
