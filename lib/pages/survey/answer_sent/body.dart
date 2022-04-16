import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../answer/answer.dart';

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
          Text(
            "Resposta Enviada!",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            "Nº Total de Respostas: 40",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 80,
          ),
          DefaultButton(
            press: () {
              Navigator.pushNamed(context, Answer.routeName, arguments: {"name": "${title}"});
            },
            text: "CONTINUAR",
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
