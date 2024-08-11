// To parse this JSON data, do
//
//     final tripsgetRespone = tripsgetResponeFromJson(jsonString);

import 'dart:convert';

List<TripsgetRespone> tripsgetResponeFromJson(String str) => List<TripsgetRespone>.from(json.decode(str).map((x) => TripsgetRespone.fromJson(x)));

String tripsgetResponeToJson(List<TripsgetRespone> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TripsgetRespone {
    int idx;
    String name;
    String country;
    String coverimage;
    String detail;
    int price;
    int duration;
    String destinationZone;

    TripsgetRespone({
        required this.idx,
        required this.name,
        required this.country,
        required this.coverimage,
        required this.detail,
        required this.price,
        required this.duration,
        required this.destinationZone,
    });

    factory TripsgetRespone.fromJson(Map<String, dynamic> json) => TripsgetRespone(
        idx: json["idx"],
        name: json["name"],
        country: json["country"],
        coverimage: json["coverimage"],
        detail: json["detail"],
        price: json["price"],
        duration: json["duration"],
        destinationZone: json["destination_zone"],
    );

    Map<String, dynamic> toJson() => {
        "idx": idx,
        "name": name,
        "country": country,
        "coverimage": coverimage,
        "detail": detail,
        "price": price,
        "duration": duration,
        "destination_zone": destinationZone,
    };
}
