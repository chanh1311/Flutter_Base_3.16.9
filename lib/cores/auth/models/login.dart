
import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
    Login({
        required this.employeeNo,
        required this.username,
        required this.displayName,
        required this.userType,
        required this.userId,
        required this.token,
    });

    String employeeNo;
    String username;
    String displayName;
    String userType;
    int userId;
    String token;

    factory Login.fromJson(Map<String, dynamic> json) => Login(
        employeeNo: json["employee_no"],
        username: json["username"],
        displayName: json["display_name"],
        userType: json["user_type"],
        userId: json["user_id"],
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "employee_no": employeeNo,
        "username": username,
        "display_name": displayName,
        "user_type": userType,
        "user_id": userId,
        "token": token,
    };
}
