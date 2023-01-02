// To parse this JSON data, do
//
//     final suggestion = suggestionFromJson(jsonString);

import 'dart:convert';

Suggestion suggestionFromJson(String str) => Suggestion.fromJson(json.decode(str));

String suggestionToJson(Suggestion data) => json.encode(data.toJson());

class Suggestion {
    Suggestion({
        this.activity,
        this.type,
        this.participants,
        this.price,
        this.link,
        this.key,
        this.accessibility,
    });

    String? activity;
    String? type;
    int? participants;
    double? price;
    String? link;
    String? key;
    double? accessibility;

    factory Suggestion.fromJson(Map<String, dynamic> json) => Suggestion(
        activity: json["activity"],
        type: json["type"],
        participants: json["participants"],
        price: json["price"].toDouble(),
        link: json["link"],
        key: json["key"],
        accessibility: json["accessibility"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "activity": activity,
        "type": type,
        "participants": participants,
        "price": price,
        "link": link,
        "key": key,
        "accessibility": accessibility,
    };
}
