// ignore_for_file: prefer_const_constructors, camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled7/views/login_view.dart';

import '../shared/constants/colors.dart';
import '../shared/widgets/custom_button.dart';
import '../shared/widgets/custom_elevated_button.dart';
import '../shared/widgets/onboarding_row.dart';

class OnBoardingView_3 extends StatelessWidget {
  const OnBoardingView_3({super.key});

  static String id = "onboarding3";

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
                  "assets/images/undraw_Pay_online_re_aqe6__1_-removebg-preview 1.png",
                  fit: BoxFit.cover,

                ),
              ),
              Text("Online Payment" ,style: TextStyle(fontSize: 24.sp),),

              SizedBox(
                height: 24.h,
              ),
              //onboarding 2 يذهب الى
              OnBoardingRow(
                color3: kBlueColor,
              ),
              SizedBox(height: 32.h,),

              CustomButton(
                url: "assets/images/shuttle 1.png",
                label: "Get Started",
                onTap: () {
                  Navigator.pushReplacementNamed(context, MyPhoneView.id);
                },
                width: MediaQuery.of(context).size.width/2,
                imageWidth: 14.sp,
                imageHeight: 14.sp,
                textWidth: 24.sp,




              )

              // CustomElevatedButton(onPressed: (){
              //   Navigator.pushNamed(context, LoginView.id);
              // }, text: "Next" , textWidth: 24.sp,
              // url: "assets/images/shuttle 1.png",)
            ],
          ),
        ),
      ),
    );
  }
}
