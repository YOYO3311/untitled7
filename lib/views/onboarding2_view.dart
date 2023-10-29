// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled7/views/onboarding3_view.dart';

import '../shared/constants/colors.dart';
import '../shared/widgets/custom_button.dart';
import '../shared/widgets/onboarding_row.dart';

class OnBoardingView_2 extends StatelessWidget {
  const OnBoardingView_2({super.key});

  static String id = "onboarding2";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100.h,),
              SizedBox(
                width: MediaQuery.of(context).size.width/2,
                child: Image.asset(
                  "assets/images/undraw_Vault_re_s4my__1_-removebg-preview 1.png",
                  fit: BoxFit.cover,

                ),
              ),
              Text("Saving" ,style: TextStyle(fontSize: 24.sp),),

              SizedBox(
                height: 24.h,
              ),
              //onboarding 2 يذهب الى
              OnBoardingRow(
                color2: kBlueColor,
              ),
              SizedBox(height: 32.h,),


              CustomButton(
                url: 'assets/images/down-filled-triangular-arrow 1.png',
                label: "Next",
                onTap: () {
                  Navigator.pushReplacementNamed(context, OnBoardingView_3.id);
                },
                width: MediaQuery.of(context).size.width/3,
                imageWidth: 14.sp,
                imageHeight: 14.sp,
                textWidth: 24.sp,




              )

              // CustomElevatedButton(onPressed: (){
              //   Navigator.pushNamed(context, OnBoardingView_3.id);
              // }, text: "Next" , textWidth: 24.sp,)
            ],
          ),
        ),
      ),
    );
  }
}
