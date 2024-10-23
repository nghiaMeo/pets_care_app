import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class WaterPumpWidget extends StatefulWidget {
  const WaterPumpWidget({super.key});

  @override
  State<WaterPumpWidget> createState() => _WaterPumpWidgetState();
}

class _WaterPumpWidgetState extends State<WaterPumpWidget> {
  bool isSwitched = false;
  bool isSwitchedAuto = false;

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Water pump",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Switch(
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
                activeColor: Colors.orange,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Water pump Automation",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Switch(
                value: isSwitchedAuto,
                onChanged: (bool value) {
                  setState(() {
                    isSwitchedAuto = value;
                  });
                },
                activeColor: Colors.orange,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
