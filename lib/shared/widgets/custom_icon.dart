import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../constants/colors.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.url, this.onTap});
  final String url;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: kBlueColor,
          borderRadius: BorderRadius.circular(100.r),
        ),
        child: Image.asset(
          url,
          color: Colors.white,
        ),
      ),
    );
  }
}
