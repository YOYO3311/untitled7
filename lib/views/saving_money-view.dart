// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../shared/widgets/saving_money_body.dart';

class SavingMoneyView extends StatelessWidget {
  const SavingMoneyView({super.key});
  static String id = "save money view";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: SavingMoneyBody(),
    );
  }
}
