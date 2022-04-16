import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'body.dart';

class Summary extends StatelessWidget {
  static String routeName = "/summary";

  const Summary({Key? key}) : super(key: key);

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
