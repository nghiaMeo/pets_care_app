import 'package:flutter/material.dart';
import 'package:pets_care_app/screens/setting/widgets/record_widget.dart';
import 'package:pets_care_app/screens/setting/widgets/time_food_widget.dart';
import 'package:pets_care_app/screens/setting/widgets/food_volume_widget.dart';
import 'package:pets_care_app/screens/setting/widgets/water_pump_widget.dart';
import 'package:pets_care_app/widgets/wheel_scroll_time_widget.dart';

import '../../common/helper/app_navigator.dart';
import '../../core/assets/app_images.dart';
import '../../core/theme/app_colors.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/basic_app_button.dart';
import '../../widgets/rich_text_widget.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(
        title: Text(
          "Settings devices",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverList.list(children: const [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    RecordWidget(),
                    SizedBox(height: 10),
                    TimeFoodWidget(),
                    SizedBox(height: 20),
                    FoodVolumeWidget(),
                    SizedBox(height: 20),
                    WaterPumpWidget()
                  ],
                )
              ])
            ],
          ),
        ),
      ),
    );
  }

}
