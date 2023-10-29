// ignore_for_file: camel_case_types, unnecessary_import, file_names, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared/constants/colors.dart';
import '../shared/widgets/custom_label_view.dart';


class SubmitPurchase extends StatelessWidget {
  const SubmitPurchase({super.key});

  static String id = "submit a purchases";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(children: [
        const CustomLabelView(label: "Submit a purchase order"),
        SizedBox(height: 16.h,),
        SizedBox(
          width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/images/Rectangle 31.png",
            fit: BoxFit.cover,)),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 245.h,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Center(
            child: Text(
              'A request has been submitted, but it will take a few minutes for me to be approved. Please wait. A customer service representative will contact you for confirmation',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kBlackColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        )
      ]),
    )));
  }
}
