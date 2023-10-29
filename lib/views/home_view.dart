import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/bottom_nav_bar_item_model.dart';
import '../models/saving_plan_model.dart';
import '../shared/constants/colors.dart';
import '../shared/widgets/custom_circle_percent_indecator.dart';
import '../shared/widgets/custom_elevated_button.dart';
import '../shared/widgets/custom_home_appbar.dart';
import '../shared/widgets/custom_saving_plan_card.dart';
import '../shared/widgets/custom_section_title.dart';
import '../shared/widgets/custom_side_menu.dart';
import 'servics_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static String id = 'homeview';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

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

  final List<PlanModel> availablePlans = const [
    PlanModel(
      image: 'assets/images/pexels-lukas-590011 1.png',
      planName: 'First plan',
    ),
    PlanModel(
      image: 'assets/images/pexels-lukas-590011 1.png',
      planName: 'Second plan',
    ),
    PlanModel(
      image: 'assets/images/pexels-lukas-590011 1.png',
      planName: 'Third plan',
    ),
    PlanModel(
      image: 'assets/images/pexels-lukas-590011 1.png',
      planName: 'Fourth plan',
    ),
    PlanModel(
      image: 'assets/images/pexels-lukas-590011 1.png',
      planName: 'Fifth plan',
    ),
  ];

  final List<PlanModel> recommendations = const [
    PlanModel(
      image: 'assets/images/pexels-william-fortunato-6140714 1.png',
      planName: 'First suggestion',
    ),
    PlanModel(
      image: 'assets/images/pexels-william-fortunato-6140714 1.png',
      planName: 'Second suggestion',
    ),
    PlanModel(
      image: 'assets/images/pexels-william-fortunato-6140714 1.png',
      planName: 'Third suggestion',
    ),
    PlanModel(
      image: 'assets/images/pexels-william-fortunato-6140714 1.png',
      planName: 'Fourth suggestion',
    ),
    PlanModel(
      image: 'assets/images/pexels-william-fortunato-6140714 1.png',
      planName: 'Fifth suggestion',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      endDrawer: const CustomSideMenu(),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
        child: Builder(
          builder: (context) {
            return BottomNavigationBar(
              onTap: (value) {
                if (value == 0 ) {
                  currentIndex = value;
                  setState(() {
                    Navigator.pushNamed(context, HomeView.id);
                  });
                }
                if (value == 1){
                  currentIndex = value;
                  setState(() {
                    Navigator.pushNamed(context, ServicesView.id);

                  });
                }

                if (value == 2){
                  currentIndex = value;
                  setState(() {

                  });
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
      body: SafeArea(

        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CustomHomeAppBar(
                leading: Image.asset(
                  'assets/images/user (1) 1.png',
                  width: 40.sp,
                ),
                title: Text(
                  'User Name',
                  style: TextStyle(fontSize: 16.sp),
                ),
                subtitle: Text(
                  'user phone number or email',
                  style: TextStyle(fontSize: 14.sp),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16.h,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomSectionTitle(
                iconPath: 'assets/images/wallet 1.png',
                title: 'your current balance',
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomCirclePercentIndecator(
                    percent: 0,
                    text: '0',
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  CustomElevatedButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, routeName)
                    },
                    text: 'Recharge',
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16.sp,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomSectionTitle(
                iconPath: 'assets/images/number-blocks 1.png',
                title: 'Number of instalments paid',
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.translate(
                    offset: const Offset(-20, 0),
                    child: const CustomCirclePercentIndecator(
                      percent: 0.40,
                      text: '3',
                    ),
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  CustomElevatedButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, routeName)
                    },
                    text: 'Pay',
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16.sp,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomSectionTitle(
                iconPath: 'assets/images/coins 1.png',
                title: 'Available plans',
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16.sp,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 120.h,
                child: ListView.builder(
                  itemCount: availablePlans.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CustomSavingPlanCard(
                      planModel: availablePlans[index],
                    );
                  },
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomSectionTitle(
                iconPath: 'assets/images/recommend 1.png',
                title: 'Recommendations',
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16.sp,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 120.h,
                child: ListView.builder(
                  itemCount: recommendations.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CustomSavingPlanCard(
                      planModel: recommendations[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
