// ignore_for_file: camel_case_types, file_names, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled7/shared/widgets/custom_button.dart';
import 'package:untitled7/shared/widgets/reusable_textformfield.dart';


import '../shared/widgets/custom_label_view.dart';

class PaymentForPurchasesView extends StatelessWidget {
  const PaymentForPurchasesView({super.key});

  static String id = "payment for purchases";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomLabelView(label: "Payment a purchase"),
            SizedBox(
              height: 70.h,
            ),
            ReusableTextFormField(
              maxLines: 3,
                hint:
                    "Bank transfer \nTransfer your receipt directly to your bank account",
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 15.h,
            ),
            ReusableTextFormField(
              maxLines: 3,
                textAlign: TextAlign.start,
                hint:
                    "Electronic Wallet \nVodafone Cash or any other wallet \nFees apply to withdrawals"),
            SizedBox(
              height: 15.h,
            ),
            ReusableTextFormField(
              maxLines: 3,

                textAlign: TextAlign.start,
                hint:
                    "Purchase card \nPrepaid purchases card\n Maximum card limit is 100,000"),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 24),
              child: CustomButton(
                textWidth: 18.sp,
                label: "Next",
                onTap: () {},
                url: "assets/images/logout 1.png",
              ),
            )
          ],
        ),
      ),
    ));
  }
}
