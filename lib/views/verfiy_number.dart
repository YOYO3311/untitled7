import 'package:flutter/material.dart';
import 'package:untitled7/shared/widgets/MyVerify.dart';


class MyVerifyView extends StatelessWidget{
  const MyVerifyView({super.key});

  static String id = "verify";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: MyVerify(),
    );
  }

}