import 'package:flutter/material.dart';
import 'package:pets_care_app/screens/follow/widgets/cat_eat_day_widget.dart';
import 'package:pets_care_app/screens/follow/widgets/daily_meal_count_statistics_widget.dart';
import 'package:pets_care_app/screens/setting/manual_setting_screen.dart';
import 'package:pets_care_app/widgets/rich_text_widget.dart';

import '../../common/helper/app_navigator.dart';
import '../../core/assets/app_images.dart';
import '../../core/theme/app_colors.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/basic_app_button.dart';
import '../setting/auto_setting_screen.dart';

class FollowPetsScreen extends StatelessWidget {
  const FollowPetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(
        title: Text(
          "Monitor Information Cameras",
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
                    _buildLivePets(),
                    const SizedBox(height: 10),
                    const SizedBox(height: 20),
                    const CatEatDayWidget(),
                    const SizedBox(height: 20),
                    const DailyMealCountStatisticsWidget(),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(child: _buildPressButtonAuto(context)),
                        const SizedBox(width: 10),
                        Expanded(child: _buildPressButtonManual(context)),

                      ],
                    )
                  ],
                )
              ])
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLivePets() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: const Column(
        children: [
          Image(image: AssetImage(AppImages.meow), fit: BoxFit.fitHeight),
        ],
      ),
    );
  }


  Widget _buildPressButtonAuto(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(context, const AutoSettingScreen());
      },
      title: 'Auto Setting',
      color: Colors.grey,
    );
  }

  Widget _buildPressButtonManual(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(context, const ManualSettingScreen());
      },
      title: 'Manual Setting',
      color: Colors.blueGrey,
    );
  }
}
