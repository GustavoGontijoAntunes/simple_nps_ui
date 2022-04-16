import 'package:flutter/material.dart';

import '../constants.dart';
import '../pages/forgot_password/forgot_password.dart';

class SingleLineInputPasswordField extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final String labelText;
  final bool showForgotPasswordButton;

  SingleLineInputPasswordField({
    this.labelText = "",
    this.showForgotPasswordButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 30,
      ),
      child: Form(
        key: _formKey,
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              labelText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            SizedBox(height: 10,),
            if(showForgotPasswordButton)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, ForgotPassword.routeName);
                    },
                    child: Text(
                      "Esqueceu a senha?",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}
