import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets/app_vectors.dart';

class SearchFieldWidget extends StatelessWidget {
  SearchFieldWidget({super.key});

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        controller: textEditingController,
        onChanged: (value) {},
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
            hintText: 'search',),
      ),
    );
  }
}
