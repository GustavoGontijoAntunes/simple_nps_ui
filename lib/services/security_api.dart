import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/user.dart';

class SecurityApi {
  static Future<User?> login(String email, String password) async {

    User? user = User(email: email, password: password);
    var url = "https://simple-nps-api.herokuapp.com/security/login";
    //var url = "http://192.168.2.33:5000/security/login";
    var headers = {"Content-Type": "application/json"};

    Map params = {
      "email": email,
      "password": password
    };

    var _body = json.encode(params);
    var response = await http.post(Uri.parse(url), headers: headers, body: _body);

    Map mapResponse = json.decode(response.body);

    if(!mapResponse.containsKey("message")){
      user = User.fromJson(mapResponse);
      user.setToken(mapResponse['token']);

      user.save();

    }else{
      user = null;
    }

    return user;
  }

  static Future<bool> register(User u) async {
    var headers = {"Content-Type": "application/json"};
    var url = "https://simple-nps-api.herokuapp.com/security/register";

    Map params = {
      "email": u.email,
      "password": u.password,
    };

    var _body = json.encode(params);
    var response = await http.post(Uri.parse(url), headers: headers, body: _body);

    if(response.statusCode == 200){
      return true;
    }else{
      return false;
    }
  }
}