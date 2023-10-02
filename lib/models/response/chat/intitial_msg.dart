import 'dart:convert';

InitialChat initialChatFromJson(String str) => InitialChat.fromJson(json.decode(str));

String initialChatToJson(InitialChat data) => json.encode(data.toJson());

class InitialChat {
    final String id;

    InitialChat({
        required this.id,
    });

    factory InitialChat.fromJson(Map<String, dynamic> json) => InitialChat(
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
    };
}
