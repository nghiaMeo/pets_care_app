import 'package:flutter/material.dart';
import 'package:pets_care_app/screens/home/widgets/header_widget.dart';
import 'package:pets_care_app/widgets/rich_text_widget.dart';

import '../../common/helper/app_navigator.dart';
import '../../core/assets/app_images.dart';
import '../../core/theme/app_colors.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/basic_app_button.dart';
import '../setting/setting_screen.dart';

class FollowPetsScreen extends StatelessWidget {
  const FollowPetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(
        title: Text(
          "Stream video",
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
                  children: [
                    const SizedBox(height: 10),
                    _buildLivePets(),
                    const SizedBox(height: 10),
                    _buildInformationLivePets(),
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

  Widget _buildLivePets() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16), // Bo góc
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Màu bóng
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

  Widget _buildInformationLivePets() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: 500,
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16), // Bo góc
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Màu bóng
            spreadRadius: 5,
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text("Information Pet",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 5,),
          RichTextWidget(
              title: "Number of times your cat eats per day: ",
              titleOnPress: "3",
              ),
          SizedBox(height: 5,),

          RichTextWidget(
            title: "Amount of food stored: ",
            titleOnPress: "is Full",
          ),
          SizedBox(height: 5,),

          RichTextWidget(
             title: "reserve water: ",
            titleOnPress: "3",
          ),
        ],
      ),
    );
  }
  Widget _buildPressButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(context, const SettingScreen());
      },
      title: 'Setting',
    );
  }

}
