import 'package:flutter/material.dart';

import 'body.dart';

class RecoverPassword extends StatelessWidget {
  static String routeName = "/recoverPassword";

  const RecoverPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Body(),
    );
  }
}
