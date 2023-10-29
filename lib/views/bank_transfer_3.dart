// ignore_for_file: camel_case_types, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared/constants/colors.dart';
import '../shared/widgets/custom_button.dart';
import '../shared/widgets/custom_label_view.dart';

class BankTransfer3 extends StatelessWidget {
  const BankTransfer3({super.key});

  static String id = "bank transfer 3";


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: REdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomLabelView(label: "Bank transfer"),
              SizedBox(height: 8.h,),
              Text(
                'To confirm your electronic wallet number,\n we will send you a code in a message to\n the number you provided',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kBlackColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 12.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '+20100000000000',
                    style: TextStyle(
                      color: kBlackColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                    )
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                      'Number changed',
                      style: TextStyle(
                        color: kBlackColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      )
                  ),
                ],
              ),
              SizedBox(height: 12.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50.w,
                    height: 50.h,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 16.sp),
                      textAlign: TextAlign.center,
                      cursorColor: kDarkGreyColor,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: kBlueColor)),
                        filled: true,
                        fillColor: kLightGreyColor,
                      ),
                    ),
                  ),
                  Container(
                    width: 50.w,
                    height: 50.h,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 16.sp),
                      textAlign: TextAlign.center,
                      cursorColor: kDarkGreyColor,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: kBlueColor)),
                        filled: true,
                        fillColor: kLightGreyColor,
                      ),
                    ),
                  ),
                  Container(
                    width: 50.w,
                    height: 50.h,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 16.sp),
                      textAlign: TextAlign.center,
                      cursorColor: kDarkGreyColor,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: kBlueColor)),
                        filled: true,
                        fillColor: kLightGreyColor,
                      ),
                    ),
                  ),
                  Container(
                    width: 50.w,
                    height: 50.h,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 16.sp),
                      textAlign: TextAlign.center,
                      cursorColor: kDarkGreyColor,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: kBlueColor)),
                        filled: true,
                        fillColor: kLightGreyColor,
                      ),
                    ),
                  ),
                  Container(
                    width: 50.w,
                    height: 50.h,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 16.sp),
                      textAlign: TextAlign.center,
                      cursorColor: kDarkGreyColor,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: kBlueColor)),
                        filled: true,
                        fillColor: kLightGreyColor,
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 48.h,
              ),
                  TextButton(
                    onPressed: (){},
                    child: Text(
                        'Send the code again',
                        style: TextStyle(
                          color: kBlackColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                  ),
                  SizedBox(
                    height: 175.h,
                  ),
                  CustomButton(
                      url: "assets/images/logout 1.png",
                      imageHeight: 24.h,
                      imageWidth: 24.w,
                      textWidth: 18.sp,
                      label: "Next",
                      onTap: () {
                       // Navigator.pushNamed(context, BankTransfer3.id);
                      }),
            ]),
          ),
        ),
      ),
    );
  }
}


