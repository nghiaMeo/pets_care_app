import 'package:flutter/material.dart';
import 'package:pets_care_app/core/theme/app_colors.dart';
import 'package:pets_care_app/screens/product/widgets/product_card_widget.dart';
import 'package:pets_care_app/widgets/app_bar_widget.dart';

import '../../core/assets/app_images.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: const BasicAppbar(
        title: Text('Cat Foods'),
      ),
      body: _buildListProducts(),
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

    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 sản phẩm mỗi hàng
            childAspectRatio: 0.95,
            crossAxisSpacing: 20, // Khoảng cách ngang giữa các sản phẩm
            mainAxisSpacing: 20, // Khoảng cách dọc giữa các sản phẩm
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ProductCardWidget(
                nameProduct: nameProducts[index],
                priceProduct: '${priceProducts[index]}',
                imageProduct: AppImages.products[
                    index], // Đảm bảo bạn đã định nghĩa AppImages.services
              );
            },
            childCount: nameProducts.length, // Số lượng sản phẩm
          ),
        ),
      ],
    );
  }
}

// Đừng quên định nghĩa ProductCardWidget và AppImages.services ở đâu đó trong mã của bạn
