import 'package:flutter/cupertino.dart';

import 'pages/forgot_password/forgot_password.dart';
import 'pages/initial/initial.dart';
import 'pages/login/login.dart';
import 'pages/recover_password/recover_password.dart';
import 'pages/register/register.dart';
import 'pages/survey/survey.dart';

final Map<String, WidgetBuilder> routes = {
  Initial.routeName: (context) => Initial(),
  Login.routeName: (context) => Login(),
  Register.routeName: (context) => Register(),
  ForgotPassword.routeName: (context) => ForgotPassword(),
  RecoverPassword.routeName: (context) => RecoverPassword(),
  Survey.routeName: (context) => Survey(),
};