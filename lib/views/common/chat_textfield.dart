
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:jobhubv2_0/constants/app_constants.dart';
import 'package:jobhubv2_0/controllers/chat_provider.dart';
import 'package:jobhubv2_0/views/common/app_style.dart';
import 'package:provider/provider.dart';

class MessagingTextController extends StatelessWidget {
  const MessagingTextController({
    super.key,
    required TextEditingController messageController,
    required FocusNode messageFocusNode,
    this.onChanged,
    this.sendText,
    this.sendImages, this.onEditingComplete, this.onTapOutside, this.onTap,
  })  : _messageController = messageController,
        _messageFocusNode = messageFocusNode;

  final TextEditingController _messageController;
  final FocusNode _messageFocusNode;
  final void Function(String)? onChanged;
  final void Function()? sendText;
  final void Function()? sendImages;final void Function()? onEditingComplete;
  final void Function(PointerDownEvent)? onTapOutside;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: Container(
        width: width,
        height: 80.h,
        decoration: BoxDecoration(
          color: Color(kLight.value),
       
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: width,
          height: 80.h,
          child: TextFormField(
            keyboardType: TextInputType.multiline,
            maxLines: 5,
            minLines: 1,
            controller: _messageController,
            autofocus: false,
            focusNode: _messageFocusNode,
            onChanged: onChanged,
            onTap: onTap,
            onTapOutside: onTapOutside,
            onEditingComplete: onEditingComplete,
            style: appStyle(12, Colors.black, FontWeight.normal),
            decoration: InputDecoration(
              suffixIcon: SizedBox(
                width: 60.w,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: sendImages,
                        child: Icon(
                          EvilIcons.image,
                          size: 30.w,
                        )),
                    GestureDetector(
                        onTap: sendText,
                        child: Consumer<ChatNotifier>(
                          builder: (context, chatNotifier, child) {
                            return Icon(
                          MaterialCommunityIcons.send,
                          color: chatNotifier.isFocused
                              ? Color(kLightBlue.value)
                              : Color(kDarkGrey.value),
                        ) ;
                          },
                        )),
                  ],
                ),
              ),
              hintText: "Send messages...",
              hintStyle: appStyle(12, Colors.grey, FontWeight.normal),
              focusedBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none),
              enabledBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ),
      ),
    );
  }
}
