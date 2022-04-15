import 'package:flutter/material.dart';

import '../constants.dart';

alertDialogAddSurvey(BuildContext context, Key key) {
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
              key: key,
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
                        onPressed: () {},
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