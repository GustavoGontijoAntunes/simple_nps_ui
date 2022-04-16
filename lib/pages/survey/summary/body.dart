import 'package:flutter/material.dart';
import 'package:simple_nps_ui/components/default_button.dart';

import '../answer/answer.dart';
import '../result/result.dart';

class Body extends StatelessWidget {
  final String title;

  const Body({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "Nº Total de Respostas: 40",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 70,
          ),
          DefaultButton(
            press: () {
              Navigator.pushNamed(context, Answer.routeName, arguments: {"name": "${title}"});
            },
            text: "CONTINUAR",
          ),
          SizedBox(
            height: 50,
          ),
          DefaultButton(
            press: () {
              Navigator.pushNamed(context, Result.routeName, arguments: {"name": "${title}"});
            },
            text: "FINALIZAR",
          ),
          SizedBox(
            height: 100,
          ),
          Image.asset(
            "assets/images/Logo.png",
            height: size.height * 0.1,
          ),
        ],
      ),
    );
  }
}
