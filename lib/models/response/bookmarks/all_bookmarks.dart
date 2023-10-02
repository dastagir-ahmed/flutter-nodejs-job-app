// To parse this JSON data, do
//
//     final allBookMarks = allBookMarksFromJson(jsonString);

import 'dart:convert';

List<AllBookMarks> allBookMarksFromJson(String str) => List<AllBookMarks>.from(json.decode(str).map((x) => AllBookMarks.fromJson(x)));


class AllBookMarks {
    final String id;
    final Job job;
    final String userId;

    AllBookMarks({
        required this.id,
        required this.job,
        required this.userId,
    });

    factory AllBookMarks.fromJson(Map<String, dynamic> json) => AllBookMarks(
        id: json["_id"],
        job: Job.fromJson(json["job"]),
        userId: json["userId"],
    );

}

class Job {
    final String id;
    final String title;
    final String location;
    final String company;
    final bool hiring;
    final String salary;
    final String period;
    final String contract;
    final String imageUrl;
    final String agentId;

    Job({
        required this.id,
        required this.title,
        required this.location,
        required this.company,
        required this.hiring,
        required this.salary,
        required this.period,
        required this.contract,
        required this.imageUrl,
        required this.agentId,
    });

    factory Job.fromJson(Map<String, dynamic> json) => Job(
        id: json["_id"],
        title: json["title"],
        location: json["location"],
        company: json["company"],
        hiring: json["hiring"],
        salary: json["salary"],
        period: json["period"],
        contract: json["contract"],
        imageUrl: json["imageUrl"],
        agentId: json["agentId"],
    );

 
}
