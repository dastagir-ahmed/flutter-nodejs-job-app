import 'dart:convert';

GetAgent getAgentFromJson(String str) => GetAgent.fromJson(json.decode(str));

class GetAgent {
    final String id;
    final String userId;
    final String uid;
    final String company;
    final String hqAddress;
    final String workingHrs;

    GetAgent({
        required this.id,
        required this.userId,
        required this.uid,
        required this.company,
        required this.hqAddress,
        required this.workingHrs,
    });

    factory GetAgent.fromJson(Map<String, dynamic> json) => GetAgent(
        id: json["_id"],
        userId: json["userId"],
        uid: json["uid"],
        company: json["company"],
        hqAddress: json["hq_address"],
        workingHrs: json["working_hrs"],
    );
}
