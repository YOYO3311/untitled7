import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled7/shared/constants/colors.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
  });

  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.sp,
      child: Card(
        margin: REdgeInsets.all(0),
        color: kLighterBlueColor,
        child: Align(
          alignment: Alignment.centerLeft,
          child: ListTile(
            leading: leading,
            title: title,
            subtitle: subtitle,
            trailing: trailing,
          ),
        ),
      ),
    );
  }
}