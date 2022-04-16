import 'package:flutter/material.dart';

import 'body.dart';

class ForgotPassword extends StatelessWidget {
  static String routeName = "/forgotPassword";

  const ForgotPassword({Key? key}) : super(key: key);

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
