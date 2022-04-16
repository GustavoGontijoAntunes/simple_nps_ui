import 'package:flutter/material.dart';

import 'register_form.dart';

class Body extends StatelessWidget {

  const Body({Key? key}) : super(key: key);

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
                height: 10,
              ),
              Image.asset(
                "assets/images/Logo.png",
                height: size.height * 0.15,
              ),
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}
