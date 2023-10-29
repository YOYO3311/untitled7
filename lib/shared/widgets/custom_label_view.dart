import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_image.dart';

class CustomLabelView extends StatelessWidget {
  const CustomLabelView({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  REdgeInsets.only(top: 30,bottom: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style:  TextStyle(fontSize: 20.sp),
          ),

          Padding(
            padding: REdgeInsets.symmetric(horizontal: 8),
            child: CustomImage(width: 45.sp, height: 45.sp, url: 'assets/images/money-flow 1 (1).png'),
          ),


        ],
      ),
    );
  }
}
