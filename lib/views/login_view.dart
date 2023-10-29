import 'package:flutter/material.dart';

import '../shared/widgets/login_body.dart';


class MyPhoneView extends StatelessWidget{
  const MyPhoneView({super.key});

  static String id = "MyPhone view";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: MyPhone(),
    );
  }

}