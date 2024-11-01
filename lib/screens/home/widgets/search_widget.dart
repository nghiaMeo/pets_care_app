
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/helper/app_navigator.dart';
import '../../../core/assets/app_vectors.dart';
import '../../search/search_screen.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        readOnly: true,
        onTap: () {
          AppNavigator.push(context, const SearchScreen());
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(12),
            focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
            enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
            prefixIcon: SvgPicture.asset(
              AppVectors.search,
              fit: BoxFit.none,
              color: Colors.black,
            ),
            hintText: 'search'),
      ),
    );
  }
}
