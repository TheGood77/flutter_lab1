import 'package:flutter/material.dart';
import 'package:flutter_lab1/theme/other.dart';
import 'package:flutter_lab1/theme/strings.dart';
import 'package:flutter_lab1/screens/main/components/tab_bar.dart';
import 'package:flutter_lab1/screens/main/components/title_component.dart';
import 'package:flutter_lab1/screens/main/components/carousel/carousel_scroll.dart';
import 'package:flutter_lab1/screens/main/components/tariff/tariff_list.dart';
import 'package:flutter_lab1/screens/main/components/chips_component.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  static const int listLength = 2;

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: listLength, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: listLength,
        child: SafeArea(
          left: false,
          right: false,
          bottom: false,
          child: NestedScrollView(
            headerSliverBuilder: (context, value) {
              return [
                CustomTabBar(
                  tabController: _tabController,
                ),
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    TitleComponent(
                      title: Strings.connectTitle,
                      description: Strings.connectDescription,
                    ),
                    CarouselScroll(
                      cardsContent: Other.connectionsList,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TitleComponent(
                        title: Strings.tariffTitle,
                        description: Strings.tariffDescription,
                      ),
                    ),
                    TariffList(itemsContent: Other.tariffList),
                    TitleComponent(
                      title: Strings.interestTitle,
                      description: Strings.interestDescription,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      child: ChipsList(),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(Strings.settingsTitle),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
