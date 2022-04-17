import 'package:flutter/material.dart';
import 'package:simple_nps_ui/constants.dart';

alertDialogError(BuildContext context, String title, String message) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title,
          ),
          content: Text(
            message
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