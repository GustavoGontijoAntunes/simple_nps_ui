import 'package:flutter/material.dart';

import '../constants.dart';
import '../pages/survey/answer/answer.dart';

alertDialogAddSurvey(BuildContext context, Key key) {
  TextEditingController _controller = new TextEditingController();
  final _formKey = GlobalKey<FormState>();

  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title:  Text(
              "Criar Nova Pesquisa",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            titlePadding: EdgeInsets.only(
                bottom: 10,
                top: 10,
                left: 40
            ),
            content: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                      "Digite o nome da pesquisa:"
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    controller: _controller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Por favor, digite o nome da pesquisa.";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                        ),
                        onPressed: () {
                          Navigator.pop(context, false);
                        },
                        child: Container(
                          width: 80,
                          child: Center(
                            child: Text(
                              "Cancelar",
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushNamed(
                                context, Answer.routeName, arguments: {"name": _controller.text});
                          }
                        },
                        child: Container(
                          width: 80,
                          child: Center(
                            child: Text(
                              "Criar",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
        );
      }
  );
}