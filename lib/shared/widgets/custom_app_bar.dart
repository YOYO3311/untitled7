import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 60.h,
      centerTitle: true,
      backgroundColor: kGreyColor,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 8),
            child: Image.asset(
              'assets/images/money-flow 1 (1).png',
              width: 45.w,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: kBlackColor,
              fontSize: 18.sp,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
