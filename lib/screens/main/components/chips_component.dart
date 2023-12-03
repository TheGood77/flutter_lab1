import 'package:flutter/material.dart';
import 'package:flutter_lab1/theme/colors.dart';
import 'package:flutter_lab1/theme/strings.dart';

class ChipsContent {
  static final List<String> interestChips = <String>[
    Strings.foodChip,
    Strings.selfDevelopmentChip,
    Strings.techChip,
    Strings.homeChip,
    Strings.leisureChip,
    Strings.selfCareChip,
    Strings.scienceChip,
  ];

  static Map<String, bool> getTagsMap() {
    return {for (var v in interestChips) v: false};
  }

  static Map<String, bool> interestItemMap = getTagsMap();
}

class ChipsList extends StatefulWidget {
  const ChipsList({super.key});

  @override
  State<ChipsList> createState() => _ChipsListState();
}

class _ChipsListState extends State<ChipsList> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: List<Widget>.generate(
        ChipsContent.interestChips.length,
        (int index) => Builder(
          builder: (BuildContext context) {
            return SelectableInterestChip(
              label: Text(ChipsContent.interestItemMap.keys.elementAt(index)),
              selected: ChipsContent.interestItemMap.values.elementAt(index),
              onSelected: (bool selected) {
                setState(() {
                  ChipsContent.interestItemMap[ChipsContent.interestItemMap.keys
                      .elementAt(index)] = selected;
                });
              },
            );
          },
        ),
      ),
    );
  }
}

class SelectableInterestChip extends StatefulWidget {
  final Widget label;
  final bool selected;
  final ValueChanged<bool> onSelected;

  const SelectableInterestChip({
    Key? key,
    required this.label,
    required this.selected,
    required this.onSelected,
  }) : super(key: key);

  @override
  _SelectableFilterChipState createState() => _SelectableFilterChipState();
}

class _SelectableFilterChipState extends State<SelectableInterestChip> {
  bool _selected = false;

  @override
  void initState() {
    super.initState();
    _selected = widget.selected;
  }

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: widget.label,
      selected: _selected,
      onSelected: (bool selected) {
        setState(() {
          _selected = selected;
          widget.onSelected(selected);
        });
      },
      showCheckmark: false,
      selectedColor:
          _selected ? ColorsList.tabIndicator : ColorsList.grayColor,
    );
  }
}
