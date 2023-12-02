import 'package:flutter/material.dart';
import 'package:flutter_lab1/theme/colors.dart';
import 'package:flutter_lab1/theme/fonts.dart';
import 'package:flutter_lab1/theme/strings.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key, required this.tabController}) : super(key: key);

  final tabController;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: ColorsList.whiteColor,
      elevation: 2,
      pinned: true,
      floating: false,
      expandedHeight: 306,
      leading: IconButton(
        padding: const EdgeInsets.only(top: 22),
        icon: Image.asset('assets/ic_close.png'),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          padding: const EdgeInsets.only(top: 22),
          icon: Image.asset('assets/ic_exit.png'),
          onPressed: () {},
        ),
      ],
      bottom: TabBar(
        controller: tabController,
        indicatorColor: ColorsList.tabIndicator,
        labelColor: ColorsList.blackColor,
        unselectedLabelColor: ColorsList.grayColor,
        tabs: <Widget>[
          Tab(
            child: Text(
              Strings.profileTitle,
              style: TextStyle(
                fontSize: Fonts.fontSize16,
                fontFamily: Fonts.sfProTextMedium,
              ),
            ),
          ),
          Tab(
            child: Text(
              Strings.settingsTitle,
              style: TextStyle(
                fontSize: Fonts.fontSize16,
                fontFamily: Fonts.sfProTextMedium,
              ),
            ),
          ),
        ],
      ),
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 58),
              Image.asset('assets/ic_user.png'),
              const SizedBox(height: 18),
              Text(
                Strings.userName,
                style: TextStyle(
                    fontFamily: Fonts.sfProDisplayBold,
                    fontWeight: FontWeight.bold,
                    fontSize: Fonts.fontSize24),
              ),
              const SizedBox(height: 7),
            ],
          ),
        ),
      ),
    );
  }
}
