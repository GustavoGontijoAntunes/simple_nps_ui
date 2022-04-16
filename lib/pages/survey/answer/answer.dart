import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../survey.dart';
import 'body.dart';

class Answer extends StatelessWidget {
  static String routeName = "/answer";

  const Answer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;

    return WillPopScope(
      onWillPop: () async {
        Navigator.pushNamed(context, Survey.routeName);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text(
            arguments['name'],
          ),
          iconTheme: IconThemeData(
            color: kPrimaryLightColor,
          ),
        ),
        body: Body(title: arguments['name']),
      ),
    );
  }
}
