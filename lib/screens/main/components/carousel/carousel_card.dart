import 'package:flutter/material.dart';
import 'package:flutter_lab1/theme/colors.dart';
import 'package:flutter_lab1/theme/fonts.dart';

class CardContent {
  final String name;
  final String title;
  final String description;
  final ImageProvider<Object> image;

  CardContent({
    required this.name,
    required this.title,
    required this.description,
    required this.image,
  });
}

class CarouselCard extends StatelessWidget {
  final CardContent cardContent;

  const CarouselCard({
    super.key,
    required this.cardContent,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: ShapeDecoration(
        color: ColorsList.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: ColorsList.cardShadowFirst,
            blurRadius: 14,
            offset: Offset(0, 8),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: ColorsList.cardShadowSecond,
            blurRadius: 10,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Container(
        width: 216,
        height: 130,
        padding: const EdgeInsets.only(
          top: 14,
          left: 16,
          right: 16,
          bottom: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image(image: cardContent.image),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  cardContent.name,
                  style: TextStyle(
                      fontFamily: Fonts.sfProTextMedium,
                      fontWeight: FontWeight.w500,
                      fontSize: Fonts.fontSize16),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardContent.title,
                  style: TextStyle(
                      fontFamily: Fonts.sfProTextMedium,
                      fontWeight: FontWeight.w500,
                      fontSize: Fonts.fontSize14),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  cardContent.description,
                  style: TextStyle(
                      fontFamily: Fonts.sfProTextMedium,
                      color: ColorsList.grayColor,
                      fontWeight: FontWeight.w500,
                      fontSize: Fonts.fontSize14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
