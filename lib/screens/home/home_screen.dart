import 'package:flutter/material.dart';
import 'package:pets_care_app/core/theme/app_colors.dart';
import 'package:pets_care_app/screens/home/widgets/banner_widget.dart';
import 'package:pets_care_app/screens/home/widgets/category_widget.dart';
import 'package:pets_care_app/screens/home/widgets/header_widget.dart';
import 'package:pets_care_app/screens/home/widgets/search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList.list(children:  const [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HeaderWidget(),
                  SizedBox(height: 20),
                  SearchWidget(),
                  SizedBox(height: 20),
                  BannerWidget(),
                  SizedBox(height: 20),
                  CategoryWidget(),
                  // SizedBox(height: 20),
                  // NewInWidget(),
                ],
              )
            ])
          ],
        ),
      ),
    );
  }
}
