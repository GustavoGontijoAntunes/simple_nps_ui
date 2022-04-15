import 'package:flutter/material.dart';
import 'package:simple_nps_ui/constants.dart';

import '../pages/login/login.dart';

alertDialogSignOut(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Sair",
          ),
          content: Text(
              "Você tem certeza que deseja\n sair da aplicação?"
          ),
          actions: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kPrimaryColor),
              ),
              child: Text(
                "Não",
              ),
              onPressed: (){
                Navigator.pop(context, false);
              },
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kPrimaryColor),
              ),
              child: Text(
                "Sim",
              ),
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, Login.routeName, (_) => false);
              },
            ),
          ],
        );
      }
  );
}