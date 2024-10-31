import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pets_care_app/core/theme/app_colors.dart';
import 'package:pets_care_app/widgets/app_bar_widget.dart';

import 'basic_app_button.dart';

class WheelScrollNumberTimeWidget extends StatefulWidget {
  const WheelScrollNumberTimeWidget({super.key});

  @override
  State<WheelScrollNumberTimeWidget> createState() =>
      _WheelScrollNumberTimeWidgetState();
}

class _WheelScrollNumberTimeWidgetState
    extends State<WheelScrollNumberTimeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text(
            "Setting number of times",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // hour
                SizedBox(
                  width: 70,
                  child: ListWheelScrollView.useDelegate(
                    itemExtent: 50,
                    perspective: 0.005,
                    diameterRatio: 1.2,
                    physics: const FixedExtentScrollPhysics(),
                    childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 10,
                      builder: (context, index) {
                        return _buildNumberOfTime(time: index);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          _buildPressDoneButton(),
          const SizedBox(height: 10)
        ],
      ),
    );
  }

  Widget _buildNumberOfTime({
    required int time,
  }) {
    return Center(
      child: Text(
        time < 10 ? '0$time' : time.toString(),
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildPressDoneButton() {
    return BasicAppButton(
      onPressed: () {},
      title: "Done",
    );
  }
}
