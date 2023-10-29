// ignore_for_file: prefer_const_constructors_in_immutables, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/colors.dart';
import 'outlineborder.dart';

class CustomTextField extends StatelessWidget {
    CustomTextField(
      {Key? key,

      required this.url,
      required this.hintText,
      required this.textAlign,
        this.keyboardType, required TextEditingController controller,
      })
      : super(key: key);

  final String url;
  final String hintText;
  final TextAlign textAlign;
  final TextInputType? keyboardType;


  @override
  Widget build(BuildContext context) {

    return TextFormField(
      validator: (value) {
        if (value!.isEmpty){
          return "This field must not be empty";
        }else return null;
      } ,
      keyboardType: keyboardType!,
      style:  TextStyle(
        color: kWhiteColor,
        fontSize: 18.sp
      ),
      textAlign: textAlign,
      decoration: InputDecoration(
        errorStyle: TextStyle(fontSize: 14.sp),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: 30.w,
            height: 30.h,
            child: Image.asset(
              url,
              color: Colors.white,
              fit: BoxFit.contain,



            ),
          ),
        ),
        contentPadding: REdgeInsets.all(10),
        hintText: hintText,
        hintStyle:  TextStyle(color: kWhiteColor, fontSize: 18.sp),
        border: border(kBlueColor),
        focusedBorder: border(kBlackColor),
        filled: true,
        fillColor: kBlueColor,
      ),
    );
  }
}
