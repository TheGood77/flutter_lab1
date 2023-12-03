import 'package:flutter/material.dart';
import 'package:flutter_lab1/theme/colors.dart';
import 'package:flutter_lab1/theme/fonts.dart';

class TitleComponent extends StatelessWidget {
  final String title;
  final String description;

  const TitleComponent({
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 14),
          Text(
            title,
            style: TextStyle(
                fontFamily: Fonts.sfProTextBold,
                color: ColorsList.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: Fonts.fontSize20),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(
                fontFamily: Fonts.sfProTextMedium,
                color: ColorsList.grayColor,
                fontWeight: FontWeight.w500,
                fontSize: Fonts.fontSize14),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
