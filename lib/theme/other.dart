import 'package:flutter/material.dart';
import 'package:flutter_lab1/screens/main/components/carousel/carousel_card.dart';
import 'package:flutter_lab1/theme/strings.dart';

class Other {
  static List<CardContent> connectionsList = [
    CardContent(
      image: const AssetImage('assets/ic_sberprime.png'),
      name: Strings.firstCardName,
      title: Strings.firstCardTitle,
      description: Strings.cardDescription,
    ),
    CardContent(
      image: const AssetImage('assets/ic_percent_fill.png'),
      name: Strings.secondCardName,
      title: Strings.secondCardTitle,
      description: Strings.cardDescription,
    ),
  ];
}