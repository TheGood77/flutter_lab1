import 'package:flutter/material.dart';
import 'package:flutter_lab1/screens/main/components/carousel/carousel_card.dart';

class CarouselScroll extends StatelessWidget {
  final List<CardContent> cardsContent;

  const CarouselScroll({
    super.key,
    required this.cardsContent,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 8,
        ),
        padding: const EdgeInsets.only(
          top: 8,
          left: 16,
          right: 16,
          bottom: 32,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: cardsContent.length,
        itemBuilder: (BuildContext context, int index) {
          return CarouselCard(
            cardContent: cardsContent[index],
          );
        },
      ),
    );
  }
}
