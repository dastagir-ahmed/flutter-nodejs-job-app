import 'package:flutter/material.dart';
import 'package:jobhubv2_0/views/common/exports.dart';

class buildtextfield extends StatelessWidget {
  const buildtextfield({
    super.key,
    required this.hintText,
    required this.controller,
    this.onSubmitted,
    this.onChanged,
    this.keyboard,
    this.maxLines = 1,
    this.onTap,
    this.label,
    this.initialValue,
    this.height, this.suffixIcon,
  });

  final TextEditingController controller;
  final String hintText;
  final String? initialValue;
  final TextInputType? keyboard;
  final String? Function(String?)? onSubmitted;
  final void Function()? onTap;
  final Function(String)? onChanged;
  final int maxLines;
  final Widget? label;
  final double? height;
  final Widget? suffixIcon;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: SizedBox(
        height: height ?? 60,
        child: TextFormField(
          validator: onSubmitted,
          initialValue: initialValue,
          onChanged: onChanged,
          keyboardType: keyboard,
          maxLines: maxLines,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            isDense: true,
            hintText: hintText,
            label: label,
            hintStyle: appStyle(12, Colors.grey.shade600, FontWeight.normal),
            // contentPadding: EdgeInsets.only(left: 24),
            errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 0.5),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.lightBlue.shade600, width: 0.5),
                borderRadius: const BorderRadius.all(Radius.circular(12))),
            focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 0.5),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 0.5),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 0.5),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            border: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Colors.lightBlue.shade600, width: 0.5),
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
          ),
          controller: controller,
          cursorHeight: 25,
          style: appStyle(11, Colors.black, FontWeight.normal),
        ),
      ),
    );
  }
}
