// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import 'custom_button.dart';
import 'custom_image.dart';

class CustomStack extends StatelessWidget {
  const CustomStack(
      {super.key,
      required this.url,
      required this.imageLabel,
      this.buttonWidth, required this.onTap});
  final String url;
  final String imageLabel;
  final double? buttonWidth;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
            child: Image.asset(url, fit: BoxFit.cover,)),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: CustomButton(
              imageWidth: 20.sp,
              imageHeight: 20.sp,
              color: kBlueColor.withOpacity(0.74),
              onTap: onTap,
              label: imageLabel,
              width: buttonWidth,
              url: "assets/images/down-filled-triangular-arrow 1.png",
              textWidth: 20.sp,
            ))
      ],
    );
  }
}
