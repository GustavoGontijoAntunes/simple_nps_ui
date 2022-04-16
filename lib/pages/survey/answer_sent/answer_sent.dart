import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'body.dart';

class AnswerSent extends StatelessWidget {
  static String routeName = "/answer_sent";
  const AnswerSent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
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
    );
  }
}
