import 'dart:convert';

List<AgentJobsList> agentJobsListFromJson(String str) => List<AgentJobsList>.from(json.decode(str).map((x) => AgentJobsList.fromJson(x)));

class AgentJobsList {
    final String id;
    final String title;
    final String company;
    final String salary;
    final String period;
    final String imageUrl;

    AgentJobsList({
        required this.id,
        required this.title,
        required this.company,
        required this.salary,
        required this.period,
        required this.imageUrl,
    });

    factory AgentJobsList.fromJson(Map<String, dynamic> json) => AgentJobsList(
        id: json["_id"],
        title: json["title"],
        company: json["company"],
        salary: json["salary"],
        period: json["period"],
        imageUrl: json["imageUrl"],
    );

}
