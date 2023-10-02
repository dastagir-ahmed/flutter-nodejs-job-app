import 'dart:convert';

CreateChat createChatFromJson(String str) => CreateChat.fromJson(json.decode(str));

String createChatToJson(CreateChat data) => json.encode(data.toJson());

class CreateChat {
    final String userId;

    CreateChat({
        required this.userId,
    });

    factory CreateChat.fromJson(Map<String, dynamic> json) => CreateChat(
        userId: json["userId"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
    };
}
