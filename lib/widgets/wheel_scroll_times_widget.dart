import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pets_care_app/core/theme/app_colors.dart';
import 'package:pets_care_app/widgets/app_bar_widget.dart';

import 'basic_app_button.dart';

class WheelScrollTimesWidget extends StatefulWidget {
  const WheelScrollTimesWidget({super.key});

  @override
  State<WheelScrollTimesWidget> createState() => _WheelScrollTimesWidgetState();
}

class _WheelScrollTimesWidgetState extends State<WheelScrollTimesWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text("Setting Time Interval",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
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
                      childCount: 13,
                      builder: (context, index) {
                        return _buildHours(hour: index);
                      },
                    ),
                  ),
                ),
                const SizedBox(child: Text("Hours", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),),

                // minutes
                SizedBox(
                  width: 70,
                  child: ListWheelScrollView.useDelegate(
                    itemExtent: 50,
                    perspective: 0.005,
                    diameterRatio: 1.2,
                    physics: const FixedExtentScrollPhysics(),
                    childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 60,
                      builder: (context, index) {
                        return _buildMinutes(minute: index);
                      },
                    ),
                  ),
                ),
                const SizedBox(child: Text("Minutes", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),),
                const SizedBox(height: 10),
                // AM or PM
              ],
            ),
          ),
          _buildPressDoneButton(),
          const SizedBox(height: 5)
        ],
      ),
    );
  }

  Widget _buildMinutes({
    required int minute,
  }) {
    return Center(
      child: Text(
        minute < 10 ? '0$minute' : minute.toString(),
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildHours({
    required int hour,
  }) {
    return Center(
      child: Text(
        hour < 10 ? '0$hour' : hour.toString(),
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
