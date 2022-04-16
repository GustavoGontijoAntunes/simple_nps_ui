import 'package:flutter/material.dart';
import 'package:simple_nps_ui/constants.dart';

alertDialogError(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Erro",
          ),
          content: Text(
            "Por favor, selecione uma nota."
          ),
          actions: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kPrimaryColor),
              ),
              child: Text(
                "Ok",
              ),
              onPressed: (){
                Navigator.pop(context, false);
              },
            ),
          ],
        );
      }
  );
}