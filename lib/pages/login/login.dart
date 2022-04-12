import 'package:flutter/material.dart';

import '../initial/initial.dart';
import 'body.dart';

class Login extends StatelessWidget {
  static String routeName = "/login";
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushNamed(context, Initial.routeName);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.pushNamed(context, Initial.routeName);
            },
          ),
        ),
        body: Body(),
      ),
    );
  }
}
