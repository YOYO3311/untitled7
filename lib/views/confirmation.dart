
import 'package:flutter/material.dart';

import '../shared/widgets/custom_image.dart';
import '../shared/widgets/custom_label_view.dart';

class ConfirmationView extends StatelessWidget {

  static String id = "confirmation";


  const ConfirmationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomLabelView(label: "Confirmation"),

            Center(child: CustomImage(url: "assets/images/yes.png"))
    ]
        )
    )
    );
  }
}



