import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class CustomButton1 extends StatelessWidget {
  const CustomButton1(
      {super.key,
        required this.label,
        required this.onTap,
        this.width,
        this.textWidth,
        this.color = kBlueColor,
        });

  final String label;
  final double? width;

  final double? textWidth;
  final Color color;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          border: Border.all(color: kBlackColor),
          borderRadius: BorderRadius.circular(8.r),
          color: color,
        ),
        child: Padding(
          padding:  const EdgeInsets.symmetric(vertical: 10),
          child: Center(
            child: Text(
              label,
              style: TextStyle(fontSize: textWidth, color: kWhiteColor),
            ),
          ),
        ),
      ),
    );
  }
}
