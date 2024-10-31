import 'package:flutter/material.dart';
import 'package:pets_care_app/screens/setting/widgets/manual_water_widget.dart';
import 'package:pets_care_app/screens/setting/widgets/manual_widget.dart';
import 'package:pets_care_app/screens/setting/widgets/record_widget.dart';
import 'package:pets_care_app/screens/setting/widgets/time_food_widget.dart';
import 'package:pets_care_app/screens/setting/widgets/food_volume_widget.dart';
import 'package:pets_care_app/screens/setting/widgets/water_pump_widget.dart';

import '../../core/theme/app_colors.dart';
import '../../widgets/app_bar_widget.dart';


class ManualSettingScreen extends StatelessWidget {
  const ManualSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(
        title: Text(
          "Manual Setting",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverList.list(children:   const [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    RecordWidget(),
                    SizedBox(height: 10),
                    ManualWidget(),
                    SizedBox(height: 20),
                    ManualWaterWidget()
                    // SizedBox(height: 20),
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
