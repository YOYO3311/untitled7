// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class ReusableTextFormField extends StatelessWidget {
  const ReusableTextFormField(
      {super.key,
      required this.hint,
      this.textAlign = TextAlign.center,
       this.maxLines =1});

  final String hint;
  final TextAlign textAlign;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      textAlign: textAlign,
      decoration: InputDecoration(
        filled: true,
        fillColor: kWhiteColor,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kWhiteColor),
          borderRadius: BorderRadius.circular(12.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kWhiteColor),
          borderRadius: BorderRadius.circular(12.r),
        ),
        hintText: hint,
        hintStyle: TextStyle(
            fontSize: 18.sp, color: kBlackColor, overflow: TextOverflow.clip),
      ),
    );
  }
}
