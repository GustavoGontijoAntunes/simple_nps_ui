import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/user.dart';

class LoginApi {
  static Future<User?> login(String email, String password) async {

    User? user = User(email: email, password: password);
    var url = "https://simple-nps-api.herokuapp.com/security/login";
    //var url = "http://192.168.2.33:5000/security/login";
    var header = {"Content-Type": "application/json"};

    Map params = {
      "email": email,
      "password": password
    };

    var _body = json.encode(params);
    var response = await http.post(Uri.parse(url), headers: header, body: _body);

    Map mapResponse = json.decode(response.body);

    if(!mapResponse.containsKey("error")){
      user = User.fromJson(mapResponse);
      user.setToken(mapResponse['token']);

      user.save();

    }else{
      user = null;
    }

    return user;
  }
}