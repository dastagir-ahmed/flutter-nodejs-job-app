import 'package:flutter/material.dart';
import 'package:jobhubv2_0/constants/app_constants.dart';
import 'package:jobhubv2_0/views/common/app_style.dart';
import 'package:jobhubv2_0/views/common/reusable_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.color, this.onTap});

  final String text;
  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          height: hieght * 0.065,
          decoration: BoxDecoration(
          color: Color(kOrange.value),
          borderRadius: const BorderRadius.all(Radius.circular(9))
          ),
          child: Center(
            child: ReusableText(
                text: text,
                style: appStyle(
                    16, color ?? Color(kLight.value), FontWeight.w600)),
          ),
        ));
  }
}
