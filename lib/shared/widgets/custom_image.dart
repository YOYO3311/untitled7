import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, this.width, this.height, required this.url});
  final double? width;
  final double? height;
  final String url;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      url,
      width: width,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
