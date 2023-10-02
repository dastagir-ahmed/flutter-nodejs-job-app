import 'dart:convert';

AppliedPost appliedPostFromJson(String str) => AppliedPost.fromJson(json.decode(str));

String appliedPostToJson(AppliedPost data) => json.encode(data.toJson());

class AppliedPost {
    final String job;

    AppliedPost({
        required this.job,
    });

    factory AppliedPost.fromJson(Map<String, dynamic> json) => AppliedPost(
        job: json["job"],
    );

    Map<String, dynamic> toJson() => {
        "job": job,
    };
}
