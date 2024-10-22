import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';

class RichTextWidget extends StatelessWidget {
  final String title;
  final String titleOnPress;
  final Widget? onPage;

  const RichTextWidget({
    super.key,
    required this.title,
    required this.titleOnPress,
     this.onPage,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: const TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: titleOnPress,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => onPage!),
                );
              },
            style: const  TextStyle(
                fontWeight: FontWeight.bold, color: AppColors.button),
          ),
        ],
      ),
    );
  }
}
