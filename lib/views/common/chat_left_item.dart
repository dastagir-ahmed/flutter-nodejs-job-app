import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobhubv2_0/views/common/app_style.dart';



Widget ChatLeftItem(String type, String message, String profile){
  return Stack(
    children: [
      Container(
        padding: EdgeInsets.only(top:10.w, left: 15.w, right: 0.w, bottom: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: 230.w,
                    minHeight: 40.w
                ),
                child: Container(
                    margin: EdgeInsets.only(right: 10.w, top:0.w),
                    padding: EdgeInsets.only(top:10.w, left: 10.w, right: 10.w,),
                    decoration:  BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          Color.fromARGB(255, 106, 185, 231),
                          Color.fromARGB(255, 140, 185, 229),
                          Color.fromARGB(255, 106, 185, 231),
                        ],
                           transform: GradientRotation(120),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.w))),

                    child: type=="text"?Text(message, style: appStyle(12, Colors.white, FontWeight.normal),):
                    ConstrainedBox(constraints: BoxConstraints(
                      maxWidth: 90.w,
                    ),
                      child: GestureDetector(
                        onTap: (){
                          // Get.toNamed(AppRoutes.Photoimgview,
                          //     parameters: {"url": item.content??""});
                        },
                        child: CachedNetworkImage(
                          imageUrl: message,
                        ),
                      ),
                    )
                )
            )],
        ),

      ),

      // Positioned(
      //   left: 4.w,
      //   child: CircularAvata(w: 20, h: 20, image: profile)),
  
    ],
  );
}