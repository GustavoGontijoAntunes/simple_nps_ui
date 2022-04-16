import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'body.dart';

class Initial extends StatelessWidget {
  static String routeName = "/initial";

  const Initial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
