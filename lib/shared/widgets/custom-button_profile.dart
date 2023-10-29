// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomButtonProfile extends StatelessWidget {
  const CustomButtonProfile({super.key, required this.text, this.onTap});

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
            color: kLightGreyColor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/down-filled-triangular-arrow 5.png"),
            Text(
              text,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
