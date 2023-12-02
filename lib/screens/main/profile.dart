import 'package:flutter/material.dart';
import 'package:flutter_lab1/screens/main/components/tab_bar.dart';
import 'package:flutter_lab1/theme/strings.dart';

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
                Container(
                  alignment: Alignment.center,
                  child: Text(Strings.profileTitle),
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