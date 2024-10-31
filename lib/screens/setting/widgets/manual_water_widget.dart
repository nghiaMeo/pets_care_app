import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../widgets/basic_app_button.dart';

class ManualWaterWidget extends StatefulWidget {
  const ManualWaterWidget({super.key});

  @override
  State<ManualWaterWidget> createState() => _ManualWidgetState();
}

class _ManualWidgetState extends State<ManualWaterWidget> {
  bool _isToggled = false;

  void _toggleButton() {
    setState(() {
      _isToggled = !_isToggled;
    });
  }

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
        children: <Widget>[
          const Text(
            "Water Pump",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const Text("After 15 minutes system water pump is closed"),
          _buildPressButton(context),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildPressButton(BuildContext context) {
    return BasicAppButton(
      onPressed: _toggleButton,
      title: _isToggled ? 'Pumping' : "Turn Off",
      color: _isToggled ? Colors.cyan : Colors.blueGrey,
    );
  }
}
