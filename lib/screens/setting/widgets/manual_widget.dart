import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../widgets/basic_app_button.dart';

class ManualWidget extends StatefulWidget {
  const ManualWidget({super.key});

  @override
  State<ManualWidget> createState() => _ManualWidgetState();
}

class _ManualWidgetState extends State<ManualWidget> {
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
            "Push Food",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          _buildPressButton(context),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildPressButton(BuildContext context) {
    return ElevatedButton(
        onPressed: _toggleButton,
        style: ElevatedButton.styleFrom(
          backgroundColor:
              _isToggled ? Colors.green : Colors.red,
          minimumSize:  Size(MediaQuery.of(context).size.width, 50),
        ),
        child: Text(
          _isToggled ? 'Pushing' : 'Turn Off', // Đổi chữ
          style: const TextStyle(color: Colors.white),
        ));
  }
}
