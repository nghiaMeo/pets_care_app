import 'package:flutter/material.dart';
import 'package:pets_care_app/core/theme/app_colors.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Widget? content;
  final double? height;
  final double? width;
  final Color? color;

  const BasicAppButton(
      {required this.onPressed,
      this.title = '',
      this.height,
      this.width,
      this.content,
      super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
         backgroundColor: color ?? AppColors.button ,
          minimumSize:
              Size(width ?? MediaQuery.of(context).size.width, height ?? 50),
        ),
        child: content ??
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w400),
            ));
  }
}
