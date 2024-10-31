import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pets_care_app/common/helper/app_dialog.dart';
import 'package:pets_care_app/widgets/icons_button_widget.dart';

import '../../../core/theme/app_colors.dart';
import '../../../widgets/rich_text_widget.dart';

class RecordWidget extends StatelessWidget {
  const RecordWidget({super.key});

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
            "Recorder",
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
                title: 'Recording: ',
                titleOnPress: '',
              ),
              IconsButtonWidget(
                icon: Icons.mic_none_outlined,
                color: Colors.white,
                backgroundColor: Colors.deepOrange,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AppDialog(
                        title: 'Recording',
                        description: 'Speak loudly and clearly',
                        onConfirm: () {
                          Navigator.of(context).pop();
                        },
                        onCancel: () {
                          Navigator.of(context).pop();
                        },
                      );
                    },
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const RichTextWidget(
                title: 'Play Recording: ',
                titleOnPress: '',
              ),
              IconsButtonWidget(
                icon: Icons.play_circle,
                color: Colors.white,
                backgroundColor: Colors.orangeAccent,
                onTap: () {
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
