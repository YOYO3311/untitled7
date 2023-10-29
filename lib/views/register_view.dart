import 'package:flutter/material.dart';
import '../shared/widgets/register_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static String id = "register view";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: RegisterBody(),
    );
  }
}


