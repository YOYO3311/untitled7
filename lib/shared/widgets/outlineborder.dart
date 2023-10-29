import 'package:flutter/material.dart';


OutlineInputBorder border (Color clr){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide:  BorderSide(color: clr));
}