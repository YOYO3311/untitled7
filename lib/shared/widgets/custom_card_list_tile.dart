// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled7/shared/constants/colors.dart';

class CustomCardListTile extends StatelessWidget {
  const CustomCardListTile({
    super.key,
    this.leading,
    this.title,
    this.trailing,
  });

  final Widget? leading;
  final Widget? title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Card(

      color: kLightGreyColor,
      child: ListTile(
        leading: leading,
        title: title,
        trailing: trailing,
      ),
    );
  }
}
