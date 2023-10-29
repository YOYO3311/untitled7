// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared/constants/colors.dart';
import '../shared/widgets/custom_button.dart';
import '../shared/widgets/custom_label_view.dart';
import '../shared/widgets/custom_text.dart';
import '../shared/widgets/reusable_textformfield.dart';


class BankTransfer1 extends StatelessWidget {
  const BankTransfer1({super.key});

  static String id = "bank transfer 1";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Center(child: CustomLabelView(label: "Bank transfer")),
              SizedBox(height: 8.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/bank transfer2");
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(kWhiteColor),
                      padding:
                          MaterialStateProperty.all(EdgeInsets.all(5)),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0))),
                    ),
                    child: Text(
                      "account number",
                      style:
                          TextStyle(fontSize: 18.sp, color: kBlackColor),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/bank transfer1");
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(kBlueColor),
                      padding:
                          MaterialStateProperty.all(EdgeInsets.all(5)),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0))),
                    ),
                    child: Padding(
                      padding: REdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "IBAN",
                        style:
                            TextStyle(fontSize: 18.sp, color: kWhiteColor),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18.h,),
              CustomText(text: 'Add your bank account'),
                  SizedBox(height: 8.h,),
              CustomText(text: 'Bank transfer'),
                  SizedBox(height: 4.h,),
              ReusableTextFormField(
                hint: "",
              ),
                  SizedBox(height: 8.h,),
              CustomText(text: 'The name of the account '),
                  SizedBox(height: 1.h,),
              CustomText(text: 'holder in English'),
                  SizedBox(height: 2.h,),
              ReusableTextFormField(
                hint: "Enter your name in Arabic",
              ),
                  SizedBox(height: 8.h,),
              CustomText(text: 'Enter the IBN number'),
                  SizedBox(height: 8.h,),
              ReusableTextFormField(
                hint: "EGXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
              ),
              SizedBox(
                height: 20.h,
              ),
                  Padding(
                    padding: REdgeInsets.symmetric(horizontal: 16),
                    child: CustomButton(label: "Save", onTap: (){},url: "assets/images/logout 1.png",textWidth: 18.sp,imageWidth: 24.sp,),
                  )
              
            ]),
          )),
    );
    // )
    //);
  }
}
