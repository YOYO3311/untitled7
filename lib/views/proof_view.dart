import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared/constants/colors.dart';
import '../shared/widgets/custom_card_list_tile.dart';
import '../shared/widgets/custom_label_view.dart';
import 'bank_statement_view.dart';
import 'proof_income_view.dart';

class ProofView extends StatelessWidget {
  const ProofView({super.key});

  static String id = "proof view";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomLabelView(label: "Proof of income"),
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 8),
              child: Text(
                "Choose the type of document with which you want to prove your monthly income",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: kBlackColor,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 42.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ProofIncomeView.id);
              },
              child: CustomCardListTile(
                title: Column(
                  children: [
                    Text(
                      "Human resources answer",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: kBlackColor,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "Submit a response from Human Resources from your place of work with a written letter and a stamp",
                      style: TextStyle(fontSize: 6.sp),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                trailing: Image.asset("assets/images/chat 1.png"),
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, BankStatementView.id);
              },
              child: CustomCardListTile(
                title: Column(
                  children: [
                    Text(
                      "Bank statement",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: kBlackColor,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "Upload a bank statement in your name showing your transactions for the last 3 months",
                      style: TextStyle(fontSize: 6.sp),
                    )
                  ],
                ),
                trailing: Image.asset("assets/images/bank-statement (1) 1.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
