import 'package:flutter/cupertino.dart';
import 'package:simple_nps_ui/pages/initial/initial.dart';
import 'package:simple_nps_ui/pages/login/login.dart';
import 'package:simple_nps_ui/pages/register/register.dart';

final Map<String, WidgetBuilder> routes = {
  Initial.routeName: (context) => Initial(),
  Login.routeName: (context) => Login(),
  Register.routeName: (context) => Register(),
};