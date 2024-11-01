import 'package:flutter/material.dart';
import 'package:pets_care_app/common/helper/app_navigator.dart';
import 'package:pets_care_app/core/assets/app_images.dart';
import 'package:pets_care_app/screens/product/widgets/product_card_widget.dart';

import '../../product/products_screen.dart';

class FoodWidget extends StatelessWidget {
  const FoodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(alignment: Alignment.centerLeft, child: _buildFood(context)),
          const SizedBox(height: 20),
          _buildListProducts(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildFood(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Food',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          GestureDetector(
            onTap: () {
              AppNavigator.push(context, const ProductsScreen());
            },
            child: const Text(
              'See All',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildListProducts() {
    List<String> nameProducts = [
      'Dry Food',
      'Wet Food',
      'Canned Food',
      'Grain-Free Food',
      'Raw Food',
      'Freeze-Dried Food',
      'Kitten Food',
      'Senior Cat Food',
      'Organic Cat Food',
    ];
    List<double> priceProducts = [
      15.99, // Dry Food
      20.49, // Wet Food
      22.99, // Canned Food
      25.99, // Grain-Free Food
      30.00, // Raw Food
      28.50, // Freeze-Dried Food
      18.75, // Kitten Food
      21.50, // Senior Cat Food
      26.99, // Organic Cat Food
    ];

    return SizedBox(
      height: 205,
      child: ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ProductCardWidget(
              nameProduct: nameProducts[index],
              priceProduct: '${priceProducts[index]}', imageProduct: AppImages.products[index],
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
          itemCount: 6),
    );
  }
}
