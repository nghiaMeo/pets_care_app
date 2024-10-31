  import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pets_care_app/core/theme/app_colors.dart';
import 'package:pets_care_app/widgets/app_bar_widget.dart';

import 'basic_app_button.dart';

class WheelScrollTimeSystemWidget extends StatefulWidget {
  const WheelScrollTimeSystemWidget({super.key});

  @override
  State<WheelScrollTimeSystemWidget> createState() => _WheelScrollTimesSystemWidgetState();
}

class _WheelScrollTimesSystemWidgetState extends State<WheelScrollTimeSystemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text("Setting time",
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
                const SizedBox(height: 10),
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
                const SizedBox(height: 10),
                // AM or PM
                SizedBox(
                  width: 70,
                  child: ListWheelScrollView.useDelegate(
                    itemExtent: 50,
                    perspective: 0.005,
                    diameterRatio: 1.2,
                    physics: const FixedExtentScrollPhysics(),
                    childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 2,
                      builder: (context, index) {
                        if (index == 0) {
                          return _buildAmOrPm(isItAm: true);
                        } else {
                          return _buildAmOrPm(isItAm: false);
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
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

  Widget _buildAmOrPm({
    required bool isItAm,
  }) {
    return Center(
      child: GestureDetector(
        onTap: (){

        },
        child: Text(
          isItAm == true ? 'AM' : 'PM',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}