import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled7/shared/constants/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.textWidth=16,
    this.url = 'assets/images/down-filled-triangular-arrow 1.png'
  });
  final double textWidth;
  final void Function()? onPressed;
  final String text;
  final String url;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: kBlueColor,
        padding: REdgeInsets.all(12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
          side: const BorderSide(
            color: kBlackColor,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: textWidth, color: kWhiteColor),
          ),
          SizedBox(
            width: 8.w,
          ),
          SizedBox(
            height: 14.h,
            width: 14.w,
            child: Image.asset(
              url,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
