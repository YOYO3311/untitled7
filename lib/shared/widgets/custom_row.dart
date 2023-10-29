import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 89.w,
          height: 0.5.h,
          child: Container(
            color: kBlackColor,
          ),
        ),
         Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "or sign with",
            style: TextStyle(color: kBlackColor, fontSize: 18.sp),
          ),
        ),
        SizedBox(
          width: 89.w,
          height: 0.5.h,
          child: Container(
            color: kBlackColor,
          ),
        ),
      ],
    );
  }
}
