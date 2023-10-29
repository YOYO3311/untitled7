import 'package:flutter/material.dart';
import 'package:untitled7/shared/widgets/custom_stack.dart';
import 'package:untitled7/views/financial_association_view.dart';
import 'package:untitled7/views/saving_money-view.dart';

import 'custom_label_view.dart';


class ServicesBody extends StatelessWidget {
  const ServicesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomLabelView(label: "Services",),
            const SizedBox(height:15 ,),
            CustomStack(url:"assets/images/pexels-fauxels-3184422 1.png",
              imageLabel: "Financial Association",
            buttonWidth: MediaQuery.of(context).size.width,
            onTap: (){
              Navigator.pushNamed(context, FinancialAssociationView.id);
            },),
            const SizedBox(height: 60,),
            CustomStack(url:"assets/images/pexels-michael-steinberg-366551 1.png",
              imageLabel: "Money",
            buttonWidth: MediaQuery.of(context).size.width/3,
            onTap: (){
              Navigator.pushNamed(context, SavingMoneyView.id);
            },),




          ],
        ),
      ),
    );
  }
}
