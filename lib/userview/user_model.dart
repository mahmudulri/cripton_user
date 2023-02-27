// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.logStatus,
    this.userId,
    this.password,
    this.name,
    this.company,
    this.types,
    this.department,
    this.designation,
    this.dates,
    this.intimes,
    this.outDate,
    this.outtime,
    this.empId,
    this.empCode,
    this.empStatus,
    this.mobile,
    this.email,
    this.comId,
    this.locId,
    this.depId,
    this.secId,
    this.photoUrl,
  });

  bool? logStatus;
  String? userId;
  dynamic password;
  String? name;
  String? company;
  String? types;
  String? department;
  String? designation;
  dynamic dates;
  dynamic intimes;
  dynamic outDate;
  dynamic outtime;
  String? empId;
  String? empCode;
  dynamic empStatus;
  dynamic mobile;
  dynamic email;
  String? comId;
  String? locId;
  String? depId;
  String? secId;
  String? photoUrl;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        logStatus: json["LogStatus"],
        userId: json["UserId"],
        password: json["Password"],
        name: json["Name"],
        company: json["Company"],
        types: json["Types"],
        department: json["Department"],
        designation: json["Designation"],
        dates: json["Dates"],
        intimes: json["Intimes"],
        outDate: json["OutDate"],
        outtime: json["Outtime"],
        empId: json["EmpId"],
        empCode: json["EmpCode"],
        empStatus: json["EmpStatus"],
        mobile: json["Mobile"],
        email: json["Email"],
        comId: json["ComId"],
        locId: json["LocId"],
        depId: json["DepId"],
        secId: json["SecId"],
        photoUrl: json["PhotoUrl"],
      );

  Map<String, dynamic> toJson() => {
        "LogStatus": logStatus,
        "UserId": userId,
        "Password": password,
        "Name": name,
        "Company": company,
        "Types": types,
        "Department": department,
        "Designation": designation,
        "Dates": dates,
        "Intimes": intimes,
        "OutDate": outDate,
        "Outtime": outtime,
        "EmpId": empId,
        "EmpCode": empCode,
        "EmpStatus": empStatus,
        "Mobile": mobile,
        "Email": email,
        "ComId": comId,
        "LocId": locId,
        "DepId": depId,
        "SecId": secId,
        "PhotoUrl": photoUrl,
      };
}
