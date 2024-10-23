import 'package:flutter/material.dart';
import 'package:pets_care_app/core/assets/app_images.dart';
import 'package:pets_care_app/core/theme/app_colors.dart';
import 'package:pets_care_app/screens/profile/widgets/my_account_widget.dart';
import 'package:pets_care_app/screens/profile/widgets/wish_list_widget.dart';
import 'package:pets_care_app/widgets/app_bar_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(
        title: Text(
          "Profile",
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
                    _buildProfileUser(context),
                    SizedBox(height: 20),
                    MyAccountWidget(),
                    SizedBox(height: 20),
                    WishListWidget()
                  ],
                )
              ])
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileUser(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
                AppImages.profile), // Thay link với ảnh đại diện thực tế
          ),
          const SizedBox(height: 20),
          const Text(
            'John Doe',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'johndoe@example.com',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Logged out')),
              );
            },
            child: Text('Log Out'),
          ),
        ],
      ),
    );
  }




}
