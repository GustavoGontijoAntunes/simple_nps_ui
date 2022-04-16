import 'package:flutter/cupertino.dart';
import 'package:simple_nps_ui/pages/survey/finished_survey/finished_survey.dart';

import 'pages/forgot_password/forgot_password.dart';
import 'pages/initial/initial.dart';
import 'pages/login/login.dart';
import 'pages/recover_password/recover_password.dart';
import 'pages/register/register.dart';
import 'pages/survey/answer/answer.dart';
import 'pages/survey/answer_sent/answer_sent.dart';
import 'pages/survey/result/result.dart';
import 'pages/survey/summary/summary.dart';
import 'pages/survey/survey.dart';

final Map<String, WidgetBuilder> routes = {
  Initial.routeName: (context) => Initial(),
  Login.routeName: (context) => Login(),
  Register.routeName: (context) => Register(),
  ForgotPassword.routeName: (context) => ForgotPassword(),
  RecoverPassword.routeName: (context) => RecoverPassword(),
  Survey.routeName: (context) => Survey(),
  Result.routeName: (context) => Result(),
  Summary.routeName: (context) => Summary(),
  Answer.routeName: (context) => Answer(),
  AnswerSent.routeName: (context) => AnswerSent(),
};