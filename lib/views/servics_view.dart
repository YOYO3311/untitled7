import 'package:flutter/material.dart';

import '../shared/widgets/services_body.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});
  static String id = "services view";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ServicesBody(),

    );
  }
}
