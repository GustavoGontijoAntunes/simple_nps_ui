import 'package:flutter/material.dart';

import '../constants.dart';

class SingleLineInputField extends StatelessWidget {
  final String labelText;

  SingleLineInputField({
    this.labelText = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              labelText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
          ],
        )
    );
  }
}
