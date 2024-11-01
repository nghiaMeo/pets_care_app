import 'package:flutter/material.dart';
import 'package:pets_care_app/common/helper/app_navigator.dart';
import 'package:pets_care_app/screens/product/services_screen.dart';
import 'package:pets_care_app/screens/product/widgets/product_card_widget.dart';

import '../../../core/assets/app_images.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

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
            'Services',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          GestureDetector(
            onTap: () {
              AppNavigator.push(context, const ServicesScreen());
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

    return SizedBox(
      height: 210,
      child: ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ProductCardWidget(
              nameProduct: catCareServices[index],
              priceProduct: '${servicePrices[index]}', imageProduct: AppImages.services[index],
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
          itemCount: 6),
    );
  }
}
