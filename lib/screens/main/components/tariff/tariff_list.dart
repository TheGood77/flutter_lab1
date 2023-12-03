import 'package:flutter/material.dart';
import 'package:flutter_lab1/screens/main/components/tariff/tariff_item.dart';

class TariffList extends StatelessWidget {
  final List<ItemContent> itemsContent;

  const TariffList({
    super.key,
    required this.itemsContent,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          for (var i = 0; i < itemsContent.length; i++)
            Column(
              children: [
                TariffListItem(
                  itemContent: itemsContent[i],
                ),
                if (i < itemsContent.length - 1)
                  const Divider(
                    indent: 64,
                    thickness: 0.5,
                    height: 0.5,
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
