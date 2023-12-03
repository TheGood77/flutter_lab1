import 'package:flutter/material.dart';
import 'package:flutter_lab1/theme/colors.dart';
import 'package:flutter_lab1/theme/fonts.dart';

class ItemContent {
  final String title;
  final String description;
  final ImageProvider<Object> image;

  ItemContent({
    required this.title,
    required this.description,
    required this.image,
  });
}

class TariffListItem extends StatelessWidget {
  final ItemContent itemContent;

  const TariffListItem({
    super.key,
    required this.itemContent,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Image(image: itemContent.image),
      title: Text(
        itemContent.title,
        style: TextStyle(
          fontFamily: Fonts.sfProTextMedium,
          fontWeight: FontWeight.w500,
          fontSize: Fonts.fontSize16,
        ),
      ),
      subtitle: Text(
        itemContent.description,
        style: TextStyle(
          fontFamily: Fonts.sfProTextMedium,
          fontWeight: FontWeight.w500,
          fontSize: Fonts.fontSize14,
          color: ColorsList.grayColor,
        ),
      ),
      trailing: Image.asset('assets/ic_arrow.png'),
    );
  }
}
