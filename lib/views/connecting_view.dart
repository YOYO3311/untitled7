// ignore_for_file: prefer_const_constructors, file_names, unused_import, camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../shared/constants/colors.dart';
import '../shared/widgets/custom_button.dart';
import '../shared/widgets/custom_label_view.dart';
import '../shared/widgets/custom_text.dart';
import 'bank_transfer_3.dart';
import 'confirmation.dart';

class ConnectingView extends StatelessWidget {
  const ConnectingView({super.key});

  static String id = "Connecting view";


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: REdgeInsets.symmetric(horizontal: 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: CustomLabelView(label: "Connecting the contract")),
                SizedBox(height: 16.h,),
                CustomText(text: 'Delivery Address'),
                SizedBox(height: 4.h,),
                TextFormField(
                  style: TextStyle(fontSize: 16.sp),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: kLightGreyColor)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: kBlueColor)),
                    filled: true,
                    fillColor: kLightGreyColor,

                  ),
                ),
                SizedBox(height: 4.h,),
                CustomText(text: 'Governorate'),
                SizedBox(height: 4.h,),
                TextFormField(
                  style: TextStyle(fontSize: 16.sp),

                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: kLightGreyColor)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: kBlueColor)),
                    filled: true,
                    fillColor: kLightGreyColor,

                  ),
                ),
                SizedBox(height: 4.h,),
                CustomText(text: 'Region'),
                SizedBox(height: 4.h,),
                TextFormField(
                  style: TextStyle(fontSize: 16.sp),

                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: kLightGreyColor)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: kBlueColor)),
                    filled: true,
                    fillColor: kLightGreyColor,

                  ),
                ),
                SizedBox(height: 4.h,),
                CustomText(text: 'Street name'),
                SizedBox(height: 4.h,),
                TextFormField(
                  style: TextStyle(fontSize: 16.sp),

                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: kLightGreyColor)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: kBlueColor)),
                    filled: true,
                    fillColor: kLightGreyColor,

                  ),
                ),
                SizedBox(height: 4.h,),
                CustomText(text: 'Get home'),
                SizedBox(height: 4.h,),
                TextFormField(
                  style: TextStyle(fontSize: 16.sp),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: kLightGreyColor)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: kBlueColor)),
                    filled: true,
                    fillColor: kLightGreyColor,

                  ),
                ),
                SizedBox(height: 4.h,),
                CustomText(text: 'Phone Number'),
                SizedBox(height: 4.h,),
                IntlPhoneField(
                  initialCountryCode: 'EG',
                  dropdownTextStyle: TextStyle(
                    color: kBlackColor,
                    fontSize: 16.sp,
                  ),
                  dropdownIcon: Icon(
                    Icons.arrow_drop_down,
                    color: kBlackColor,
                    size: 20.sp,
                  ),
                  decoration: const InputDecoration(
                    fillColor: kLightGreyColor,
                    filled: true,
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(),
                    focusedErrorBorder: OutlineInputBorder(),
                  ),
                  style: TextStyle(color: kWhiteColor, fontSize: 18.sp),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 24.h,),
                CustomButton(
                    url: "assets/images/logout 1.png",
                    imageHeight: 24.h,
                    imageWidth: 24.w,
                    textWidth: 18.sp,
                    label: "Save",
                    onTap: () {
                     Navigator.pushNamed(context, ConfirmationView.id);
                    }),
                SizedBox(height: 16.h,)


              ],
            ),
          ),
        ),
      ),
    );
  }
}
