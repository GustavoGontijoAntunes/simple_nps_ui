import 'dart:convert' as convert;
import '../components/prefs.dart';

class User {
  int? id;
  String? email;
  String? password;
  String? token;

  User({
    this.id,
    this.email,
    this.password,
    this.token,
  });

  User.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    email = json['email'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['email'] = this.email;
    data['password'] = this.password;
    data['token'] = this.token;
    return data;
  }

  String toString(){
    return "User(email: $email, senha: $password, token: $token)";
  }

  void save(){
    Map map = toJson();

    String json = convert.json.encode(map);

    Prefs.setString("user.prefs", json);
  }

  static Future<User> getUser() async{
    String json = await Prefs.getString("user.prefs");
    Map map = convert.json.decode(json);
    User user = User.fromJson(map);

    return user;
  }

  void setToken(String t){
    this.token = t;
  }
}