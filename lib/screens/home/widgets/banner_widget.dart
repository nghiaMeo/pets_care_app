import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_care_app/core/assets/app_images.dart';

import '../../../bloc/home/banner_cubit.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final imagePaths = [
      AppImages.banner1,
      AppImages.banner,
      AppImages.banner2,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BlocProvider(
        create: (_) => BannerCubit(),
        child: BlocBuilder<BannerCubit, int>(
          builder: (context, imageIndex) {
            return SizedBox(
              height: 200,
              child: PageView.builder(
                onPageChanged: (index) {
                  context.read<BannerCubit>().changeImage(index);
                },
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    imagePaths[index],
                    fit: BoxFit.fill,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
