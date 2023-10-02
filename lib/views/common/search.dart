import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:jobhubv2_0/views/common/exports.dart';
import 'package:jobhubv2_0/views/common/width_spacer.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: FittedBox(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(kLightGrey.value),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Row(
            children: [
              SizedBox(
                width: width * 0.84,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                      color: Color(kOrange.value),
                      borderRadius: const BorderRadius.all(Radius.circular(9))
                      ),
                      child: Icon(
                        Feather.search,
                        color: Color(kLight.value),
                        size: 20.h,
                      ),
                    ),
                    const WidthSpacer(width: 20),
                    ReusableText(
                        text: "Search For Jobs",
                        style:
                            appStyle(16, Color(kDarkGrey.value), FontWeight.w400))
                  ],
                ),
              ),
              Icon(
                FontAwesome.sliders,
                color: Color(kDark.value),
                size: 20.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
