import 'package:flutter/material.dart';

import 'body.dart';

class Register extends StatelessWidget {
  static String routeName = "/register";

  const Register({Key? key}) : super(key: key);

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
