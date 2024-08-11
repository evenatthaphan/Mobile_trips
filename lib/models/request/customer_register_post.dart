// To parse this JSON data, do
//
//     final coutomersRegisterPost = coutomersRegisterPostFromJson(jsonString);

import 'dart:convert';

CoutomersRegisterPost coutomersRegisterPostFromJson(String str) => CoutomersRegisterPost.fromJson(json.decode(str));

String coutomersRegisterPostToJson(CoutomersRegisterPost data) => json.encode(data.toJson());

class CoutomersRegisterPost {
    String fullname;
    String phone;
    String email;
    String image;
    String password;

    CoutomersRegisterPost({
        required this.fullname,
        required this.phone,
        required this.email,
        required this.image,
        required this.password,
    });

    factory CoutomersRegisterPost.fromJson(Map<String, dynamic> json) => CoutomersRegisterPost(
        fullname: json["fullname"],
        phone: json["phone"],
        email: json["email"],
        image: json["image"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "fullname": fullname,
        "phone": phone,
        "email": email,
        "image": image,
        "password": password,
    };
}
