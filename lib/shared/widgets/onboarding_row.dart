import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import 'onboarding_container.dart';


class OnBoardingRow extends StatelessWidget {
  const OnBoardingRow({super.key,
    this.color1 = kLightGreyColor,
    this.color2 = kLightGreyColor,
    this.color3 = kLightGreyColor});

  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OnBoardingContainer(color: color1 ),
        SizedBox(width: 12.w,),
         OnBoardingContainer( color: color2,),
        SizedBox(width: 12.w,),
         OnBoardingContainer(color: color3,),
      ],
    );
  }
}
