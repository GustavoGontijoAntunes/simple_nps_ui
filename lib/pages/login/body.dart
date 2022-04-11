import 'package:flutter/material.dart';

import 'login_form.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: 80,
              ),
              Image.asset(
                "assets/images/Logo.png",
                height: size.height * 0.15,
              ),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
