import 'package:flutter/material.dart';
import 'package:jobhubv2_0/views/common/app_style.dart';
import 'package:jobhubv2_0/views/common/reusable_text.dart';

class CustomOutlineBtn extends StatelessWidget {
  const CustomOutlineBtn({super.key, this.width, this.hieght, required this.text, this.onTap, required this.color,  this.color2});

  final double? width;
  final double? hieght;
  final String text;
  final void Function()? onTap;
  final Color color;
  final Color? color2;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: hieght,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(9)),
          color: color2,
          border: Border.all(
            width: 1,
            color: color
          ),
        ),
        child: Center(
          child: ReusableText(text: text, 
          style: appStyle(14, color, FontWeight.w500)),
        ),
      ));
  }
}
