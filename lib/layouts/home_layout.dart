import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled7/shared/constants/colors.dart';
import 'package:untitled7/shared/widgets/custom_side_menu.dart';

import '../models/bottom_nav_bar_item_model.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  static String id = "home layout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  List<BottomNavBarItemModel> navBarItemsList = [
    BottomNavBarItemModel(
      text: 'Home',
      icon: 'assets/images/home (2) 1.png',
      iconSize: 26.sp,
    ),
    BottomNavBarItemModel(
      text: 'Services',
      icon: 'assets/images/invesment 1.png',
      iconSize: 26.sp,
    ),
    BottomNavBarItemModel(
      text: 'Subscriptions',
      icon: 'assets/images/subscription 1.png',
      iconSize: 26.sp,
    ),
    BottomNavBarItemModel(
      text: 'Settings',
      icon: 'assets/images/settings 1.png',
      iconSize: 26.sp,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      endDrawer: const CustomSideMenu(),
      body: Container(),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
        child: Builder(
          builder: (context) {
            return BottomNavigationBar(
              onTap: (value) {
                if (value < 3) {
                  currentIndex = value;
                  setState(() {});
                }
                if (value == 3) {
                  Scaffold.of(context).openEndDrawer();
                }
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: kBlueColor,
              unselectedFontSize: 13.sp,
              selectedFontSize: 15.sp,
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.white,
              items: navBarItemsList.map((model) {
                return BottomNavigationBarItem(
                  icon: Padding(
                    padding: REdgeInsets.only(top: 4, bottom: 2),
                    child: Image.asset(
                      model.icon,
                      width: model.iconSize,
                    ),
                  ),
                  label: model.text,
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
