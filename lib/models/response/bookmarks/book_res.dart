import 'dart:convert';

BookMarkReqRes bookMarkReqResFromJson(String str) => BookMarkReqRes.fromJson(json.decode(str));


class BookMarkReqRes {
    final String id;

    BookMarkReqRes({
        required this.id,
    });

    factory BookMarkReqRes.fromJson(Map<String, dynamic> json) => BookMarkReqRes(
        id: json["_id"],
    );

   
}
