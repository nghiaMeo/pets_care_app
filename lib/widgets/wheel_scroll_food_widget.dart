

import 'package:flutter/material.dart';

import 'package:pets_care_app/widgets/basic_app_button.dart';

class WheelScrollFoodWidget extends StatefulWidget {
  const WheelScrollFoodWidget({super.key});

  @override
  State<WheelScrollFoodWidget> createState() => _WheelScrollFoodWidgetState();
}

class _WheelScrollFoodWidgetState extends State<WheelScrollFoodWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text(
            "Setting Volume per serving (gram)",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  child: ListWheelScrollView.useDelegate(
                    itemExtent: 50,
                    perspective: 0.005,
                    diameterRatio: 1.2,
                    physics: const FixedExtentScrollPhysics(),
                    childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 20,
                      builder: (context, index) {
                        return _buildAmountOfFood(gram: (index + 1) * 5);
                      },
                    ),
                  ),
                ),
                // minutes
              ],
            ),
          ),
          const SizedBox(height: 10),
          _buildPressDoneButton(),
          const SizedBox(height: 10),
        ],
      ),
    );
  }


  Widget _buildAmountOfFood({
    required int gram,
  }) {
    return Center(
      child: Text(
        gram < 10 ? '0$gram' : '$gram',
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
