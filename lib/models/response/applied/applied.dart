import 'dart:convert';

List<Applied> appliedFromJson(String str) => List<Applied>.from(json.decode(str).map((x) => Applied.fromJson(x)));

String appliedToJson(List<Applied> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Applied {
    final String id;
    final String user;
    final Job job;

    Applied({
        required this.id,
        required this.user,
        required this.job,
    });

    factory Applied.fromJson(Map<String, dynamic> json) => Applied(
        id: json["_id"],
        user: json["user"],
        job: Job.fromJson(json["job"]),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "user": user,
        "job": job.toJson(),
    };
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

    Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "location": location,
        "company": company,
        "hiring": hiring,
        "salary": salary,
        "period": period,
        "contract": contract,
        "imageUrl": imageUrl,
        "agentId": agentId,
    };
}
