import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.url ,
      required this.label,
      required this.onTap,
      this.width,
      this.textWidth,
      this.color = kBlueColor,
      this.imageWidth,
      this.imageHeight});
  final String url;
  final String label;
  final double? width;
  final double? imageWidth;
  final double? imageHeight;
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
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: TextStyle(fontSize: textWidth, color: kWhiteColor),
              ),
                SizedBox(
                width: 8.w,
              ),
              SizedBox(
                width: imageWidth,
                height: imageHeight,
                child: Image.asset(
                  url,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
