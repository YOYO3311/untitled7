// ignore_for_file: camel_case_types, file_names, prefer_const_constructors, sort_child_properties_last, unused_import, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../shared/constants/colors.dart';
import '../shared/widgets/custom-button_profile.dart';
import '../shared/widgets/custom_button.dart';
import 'add_friend_view.dart';
import 'documents_view.dart';
import 'personal_data_view.dart';
import 'support_view.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  static String id = "edit profile";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          SizedBox(
            height: 18.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 25.sp),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Phone Nember",
                    style: TextStyle(fontSize: 25.sp),
                  ),
                ],
              ),
              Container(
                width: 112,
                height: 112,
                decoration: BoxDecoration(
                    color: kLightGreyColor,
                    borderRadius: BorderRadius.circular(100.r)),
                child: Center(
                  child: SizedBox(
                    width: 72,
                    height: 72,
                    child: Image.asset(
                      "assets/images/user (1) 1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 42.h),
          CustomButtonProfile(
              text: "Monthly payment limit\nThe price of registration "),
          SizedBox(height: 8.h),
          Text(
            "Account",
            style: TextStyle(color: kBlackColor, fontSize: 20.sp),
          ),
          SizedBox(height: 8.h),
          CustomButtonProfile(
            onTap: (){
              Navigator.pushNamed(context, PersonalDataView.id);
            },
              text: "Personal data"),
          CustomButtonProfile(
              onTap: (){
                Navigator.pushNamed(context, DocumentsView.id);
              },
              text: "documents"),
          CustomButtonProfile(
              onTap: (){
                Navigator.pushNamed(context, AddFriendView.id);
              },
              text: "Add a friend"),
          SizedBox(height: 8.h),
          Text(
            "The support",
            style: TextStyle(color: kBlackColor, fontSize: 20.sp),
          ),
          SizedBox(height: 8.h),
          CustomButtonProfile(
              onTap: (){
                Navigator.pushNamed(context, SupportView.id);
              },
              text: "support"),
          SizedBox(height: 12.h),
          CustomButton(
              url: "assets/images/logout 1.png",
              imageHeight: 24.h,
              imageWidth: 24.w,
              textWidth: 18.sp,
              label: "Recharge",
              onTap: () {
                //  Navigator.pushNamed(context, BankTransfer3.id);
              }),
          SizedBox(height: 2.h,),
          Center(
            child: Text(
              "Release version 8.3.2",
              style: TextStyle(color: kBlackColor, fontSize: 20.sp),
            ),
          ),


        ]),
      ),
    )));
  }
}
