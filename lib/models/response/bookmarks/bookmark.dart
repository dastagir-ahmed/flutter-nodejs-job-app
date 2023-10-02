import 'dart:convert';

BookMark bookMarkFromJson(String str) => BookMark.fromJson(json.decode(str));

String bookMarkToJson(BookMark data) => json.encode(data.toJson());

class BookMark {
    final bool status;
    final String bookmarkId;

    BookMark({
        required this.status,
        required this.bookmarkId,
    });

    factory BookMark.fromJson(Map<String, dynamic> json) => BookMark(
        status: json["status"],
        bookmarkId: json["bookmarkId"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "bookmarkId": bookmarkId,
    };
}
