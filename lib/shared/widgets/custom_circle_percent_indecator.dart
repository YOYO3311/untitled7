import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../constants/colors.dart';

class CustomCirclePercentIndecator extends StatelessWidget {
  const CustomCirclePercentIndecator({
    super.key,
    required this.percent,
    required this.text,
  });

  final double percent;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.r),
      child: CircularPercentIndicator(
        radius: 50.r,
        lineWidth: 12.w,
        percent: percent,
        center: Text(
          text,
          style: TextStyle(fontSize: 20.sp),
        ),
        progressColor: kBlueColor,
        backgroundColor: kDarkGreyColor,
        fillColor: kWhiteColor,
      ),
    );
  }
}
