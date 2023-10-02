import 'dart:convert';

String createAgentToJson(CreateAgent data) => json.encode(data.toJson());

class CreateAgent {
    final String uid;
    final String company;
    final String hqAddress;
    final String workingHrs;

    CreateAgent({
        required this.uid,
        required this.company,
        required this.hqAddress,
        required this.workingHrs,
    });

    Map<String, dynamic> toJson() => {
        "uid": uid,
        "company": company,
        "hq_address": hqAddress,
        "working_hrs": workingHrs,
    };
}
