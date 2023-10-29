// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared/constants/colors.dart';
import '../shared/widgets/custom_button.dart';
import '../shared/widgets/custom_label_view.dart';
import 'Submit_a_purchase.dart';

class ChangeView extends StatelessWidget {
  const ChangeView({super.key});

  static String id = "ChangeView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(


          children: [
            CustomLabelView(label: "Change currency or gold"),
            SizedBox(
              height: 150.h,
            ),
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 12),
              child: Container(
                height: 220.h,
                color: kLightGreyColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: REdgeInsets.all(10),
                      child: Center(
                          child: Text(
                        "to choose",
                        style: TextStyle(fontSize: 14.sp, color: kBlueColor),
                      )),
                    ),
                    

                    Padding(
                      padding: REdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("gold",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400)),
                          Image.asset("assets/images/change.png",width: 48.sp,),
                          Text("money",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: REdgeInsets.all(8),
                      child: Text("total average :",style: TextStyle(fontSize: 18.sp ,fontWeight: FontWeight.w400),),
                    ),
                    

                  ],
                ),
              ),
            ),
            SizedBox(height: 64.h,),
            CustomButton(label: "Apply", onTap: (){
              Navigator.pushNamed(context, SubmitPurchase.id);
            },url: "assets/images/logout 1.png",)
          ],
        ),
      ),
    );
  }
}
