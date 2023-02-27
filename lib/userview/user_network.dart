import 'dart:convert';

import 'package:cripton_user/userview/user_model.dart';
import 'package:http/http.dart' as http;

class UserAPI {
  static var client = http.Client();

  static Future<UserModel?> fetPostData() async {
    var userID = 37751;
    var userPass = 37751;
    var response = await client.get(Uri.parse(
        "http://ba.pakizatvl.com:8070/CRAPI.asmx/GetUserLogin?UId=$userID&UPas=$userPass"));

    if (response.statusCode == 200) {
      RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);

      var alluser = jsonDecode(response.body.replaceAll(exp, ''));
      print(alluser.toString());
      UserModel userModel = UserModel.fromJson(alluser);
      return userModel;
    }
  }
}
