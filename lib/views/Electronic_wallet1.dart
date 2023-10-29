// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../shared/constants/colors.dart';
import '../shared/widgets/custom_button.dart';
import '../shared/widgets/custom_label_view.dart';
import 'bank_transfer_3.dart';

class ElectronicWalletView extends StatelessWidget {
  const ElectronicWalletView({super.key});

  static String id = "wallet1";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: REdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Center(child: CustomLabelView(label: "Electronic wallet")),
              SizedBox(
                height: 4.h,
              ),
              Text(
                'You can receive gold and money from your associations with us from anywhere in the world',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: kBlackColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Phone Number',
                style: TextStyle(
                    color: kBlackColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16.h,
              ),
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
              Image.asset("assets/images/note.png"),
              SizedBox(height: 18.sp,),
              CustomButton(
                  url: "assets/images/logout 1.png",
                  imageHeight: 24.h,
                  imageWidth: 24.w,
                  textWidth: 18.sp,
                  label: "Next",
                  onTap: () {
                      Navigator.pushNamed(context, BankTransfer3.id);
                  })
            ]),
      ),
    )));
  }
}
