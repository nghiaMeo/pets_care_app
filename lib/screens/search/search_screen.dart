import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pets_care_app/screens/home/widgets/food_widget.dart';
import 'package:pets_care_app/screens/home/widgets/services_widget.dart';
import 'package:pets_care_app/screens/search/widgets/search_field_widget.dart';

import '../../core/assets/app_vectors.dart';
import '../../widgets/app_bar_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BasicAppbar(height: 80, title: SearchFieldWidget()),
        body: const Column(
          children: [
            FoodWidget(),
            SizedBox(height: 20),
            ServicesWidget()
          ],
        ));
  }

  Widget _notFound() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          AppVectors.notFound,
        ),
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            "Sorry, we couldn't find any matching result for your Search.",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
        )
      ],
    );
  }
}
