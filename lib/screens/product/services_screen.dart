import 'package:flutter/material.dart';
import 'package:pets_care_app/core/theme/app_colors.dart';
import 'package:pets_care_app/screens/product/widgets/product_card_widget.dart';
import 'package:pets_care_app/widgets/app_bar_widget.dart';

import '../../core/assets/app_images.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: const BasicAppbar(
        title: Text('Cat Care Services'),
      ),
      body: _buildListProducts(),
    );
  }

  Widget _buildListProducts() {
    List<String> catCareServices = [
      'Health Checkup', // Khám sức khỏe
      'Vaccination', // Tiêm phòng
      'Eraser, Parasite Treatment', // Tẩy giun và trị ký sinh trùng
      'Dental Care', // Chăm sóc răng miệng
      'Spay/Neuter Surgery', // Phẫu thuật triệt sản
      'Bathing', // Tắm
      'Grooming', // Cắt tỉa lông
      'Nail Trimming', // Cắt móng
      'Cat Sitting Service', // Trông giữ mèo
      'Home Care', // Chăm sóc tại nhà

    ];

    List<double> servicePrices = [
      50.00, // Health Checkup
      30.00, // Vaccination
      25.00, // Deworming and Parasite Treatment
      40.00, // Dental Care
      100.00, // Spay/Neuter Surgery
      20.00, // Bathing
      35.00, // Grooming
      15.00, // Nail Trimming
      20.00, // Cat Sitting Service
      45.00, // Home Care
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
                nameProduct: catCareServices[index],
                priceProduct: '${servicePrices[index]}',
                imageProduct: AppImages.services[
                    index], // Đảm bảo bạn đã định nghĩa AppImages.services
              );
            },
            childCount: catCareServices.length, // Số lượng sản phẩm
          ),
        ),
      ],
    );
  }
}

// Đừng quên định nghĩa ProductCardWidget và AppImages.services ở đâu đó trong mã của bạn
