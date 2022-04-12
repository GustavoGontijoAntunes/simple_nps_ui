import 'package:flutter/material.dart';

import '../../components/default_button.dart';
import '../login/login.dart';
import '../register/register.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/Logo.png",
            height: size.height * 0.25,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "O que você deseja\n fazer?",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          DefaultButton(
            text: "ENTRAR",
            press: () {
              Navigator.pushNamed(context, Login.routeName);
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "ou",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          DefaultButton(
            text: "CADASTRAR",
            press: () {
              Navigator.pushNamed(context, Register.routeName);
            },
          ),
        ],
      ),
    );
  }
}