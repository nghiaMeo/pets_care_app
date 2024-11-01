import 'package:flutter/material.dart';
import 'package:pets_care_app/core/theme/app_colors.dart';
import 'package:pets_care_app/screens/product/widgets/product_card_widget.dart';
import 'package:pets_care_app/widgets/app_bar_widget.dart';

import '../../core/assets/app_images.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: const BasicAppbar(
        title: Text('Wish List'),
      ),
      body: _buildListProducts(),
    );
  }

  Widget _buildListProducts() {
    List<String> wishList = [
      'Health Checkup', // Khám sức khỏe
      'Vaccination', // Tiêm phòng
      'Dental Care', // Chăm sóc răng miệng
    ];

    List<double> priceWish = [
      50.00, // Health Checkup
      30.00, // Vaccination
      40.00, // Dental Care
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
                nameProduct: wishList[index],
                priceProduct: '${priceWish[index]}',
                imageProduct: AppImages.services[
                    index], // Đảm bảo bạn đã định nghĩa AppImages.services
              );
            },
            childCount: wishList.length, // Số lượng sản phẩm
          ),
        ),
      ],
    );
  }
}

// Đừng quên định nghĩa ProductCardWidget và AppImages.services ở đâu đó trong mã của bạn
