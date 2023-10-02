import 'dart:convert';

SendMessage sendMessageFromJson(String str) => SendMessage.fromJson(json.decode(str));

String sendMessageToJson(SendMessage data) => json.encode(data.toJson());

class SendMessage {
    final String content;
    final String chatId;
    final String receiver;

    SendMessage({
        required this.content,
        required this.chatId,
        required this.receiver,
    });

    factory SendMessage.fromJson(Map<String, dynamic> json) => SendMessage(
        content: json["content"],
        chatId: json["chatId"],
        receiver: json["receiver"],
    );

    Map<String, dynamic> toJson() => {
        "content": content,
        "chatId": chatId,
        "receiver": receiver,
    };
}
