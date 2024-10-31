import 'package:flutter/material.dart';
import 'package:pets_care_app/screens/setting/widgets/record_widget.dart';
import 'package:pets_care_app/screens/setting/widgets/time_food_widget.dart';
import 'package:pets_care_app/screens/setting/widgets/light_control_widget.dart';
import 'package:pets_care_app/screens/setting/widgets/water_pump_widget.dart';

import '../../core/theme/app_colors.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/basic_app_button.dart';


class AutoSettingScreen extends StatelessWidget {
  const AutoSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(
        title: Text(
          "Auto Setting",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverList.list(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 10),
                    const RecordWidget(),
                    const SizedBox(height: 10),
                    const TimeFoodWidget(),
                    const SizedBox(height: 20),
                    const LightControlWidget(),
                    const SizedBox(height: 20),
                    const WaterPumpWidget(),
                    const SizedBox(height: 20),
                    _buildPressButton(context)
                  ],
                )
              ])
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPressButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
      },
      title: 'Done',
      // color: Colors.blueGrey,
    );
  }

}
