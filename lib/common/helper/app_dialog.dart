import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';

class AppDialog extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  const AppDialog({
    super.key,
    required this.title,
    required this.description,
    required this.onConfirm,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: const TextStyle(fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: onCancel,
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: onConfirm,
                  child: const Text(
                    "Done",
                    style: TextStyle(color: AppColors.button),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
