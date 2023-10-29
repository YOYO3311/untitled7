import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled7/shared/constants/colors.dart';
import 'package:untitled7/shared/widgets/custom_list_tile.dart';

class CustomSideMenu extends StatefulWidget {
  const CustomSideMenu({super.key});

  @override
  State<CustomSideMenu> createState() => _CustomSideMenuState();
}

class _CustomSideMenuState extends State<CustomSideMenu> {
  String? dropDownMenuValue = "English";
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        width: MediaQuery.of(context).size.width * 0.8,
        backgroundColor: kBlueColor,
        child: Padding(
          padding: REdgeInsets.only(top: 32),
          child: Column(
            children: [
              Image.asset(
                'assets/images/money-flow (1) 1.png',
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: REdgeInsets.symmetric(vertical: 8),
                child: CustomListTile(
                  title: Text(
                    'Edit your profile info',
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: kWhiteColor,
                    ),
                  ),
                  trailing: Image.asset('assets/images/editing 1.png'),
                ),
              ),
              Padding(
                padding: REdgeInsets.symmetric(vertical: 8),
                child: CustomListTile(
                  title: Text(
                    'Dark Mode',
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: kWhiteColor,
                    ),
                  ),
                  trailing: Switch(
                    activeTrackColor: const Color(0xff2D3034),
                    value: isSwitched,
                    onChanged: (value) {
                      isSwitched = value;
                      setState(() {});
                    },
                  ),
                ),
              ),
              Padding(
                padding: REdgeInsets.symmetric(vertical: 8),
                child: CustomListTile(
                  title: Text(
                    'Language',
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: kWhiteColor,
                    ),
                  ),
                  trailing: DropdownButton(
                    dropdownColor: const Color(0xff2D3034),
                    iconEnabledColor: kWhiteColor,
                    iconSize: 24.sp,
                    style: TextStyle(
                      fontSize: 18.sp,
                    ),
                    underline: const SizedBox(),
                    value: dropDownMenuValue,
                    items: ['English', 'Arabic'].map((String value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      dropDownMenuValue = value;
                      setState(() {});
                    },
                  ),
                ),
              ),
              Padding(
                padding: REdgeInsets.symmetric(vertical: 8),
                child: CustomListTile(
                  title: Text(
                    'Transformation',
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: kWhiteColor,
                    ),
                  ),
                  trailing: Icon(
                    Icons.sync_alt,
                    size: 30.sp,
                    color: kWhiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
