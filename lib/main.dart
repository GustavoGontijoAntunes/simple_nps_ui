import 'package:flutter/material.dart';
import 'package:simple_nps_ui/pages/initial/initial.dart';
import 'package:simple_nps_ui/routes.dart';
import 'package:simple_nps_ui/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple NPS',
      theme: theme(),
      initialRoute: Initial.routeName,
      routes: routes
    );
  }
}