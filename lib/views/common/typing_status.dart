
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jobhubv2_0/constants/app_constants.dart';
import 'package:jobhubv2_0/views/common/app_style.dart';
import 'package:jobhubv2_0/views/common/reusable_text.dart';

class TypingStatus extends StatelessWidget {
  const TypingStatus({
    super.key,
    required Stream<QuerySnapshot<Object?>> typingStatus,
  }) : _typingStatus = typingStatus;

  final Stream<QuerySnapshot<Object?>> _typingStatus;

  @override
  Widget build(BuildContext context) {
    
    return StreamBuilder<QuerySnapshot>(
        stream: _typingStatus,
        builder: (BuildContext context,
            AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          }

          if (snapshot.connectionState ==
              ConnectionState.waiting) {
            return SizedBox.fromSize();
          }
          if (snapshot.data?.docs.isEmpty == true) {
            return SizedBox.fromSize();
          }
          // Extract document IDs from the list of documents
          List<String> documentIds = snapshot.data!.docs
              .map((doc) => doc.id)
              .toList();

          if (!documentIds.contains(userUid) &&
              documentIds.isNotEmpty) {
            return ReusableText(
              text: "typing ...",
              style: appStyle(
                  9, Colors.black54, FontWeight.normal),
            );
          } else {
            return const SizedBox.shrink();
          }
        });
  }
}


