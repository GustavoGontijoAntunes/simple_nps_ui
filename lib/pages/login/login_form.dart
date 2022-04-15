import 'package:flutter/material.dart';

import '../../components/default_button.dart';
import '../../components/single_line_input_field.dart';
import '../../components/single_line_input_password_field.dart';
import '../../components/social_button.dart';
import '../survey/survey.dart';

class LoginForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Form(
      child: Column (
        children: [
          SingleLineInputField(
            labelText: "E-MAIL",
          ),
          SingleLineInputPasswordField(
            labelText: "SENHA",
            showForgotPasswordButton: true,
          ),
          DefaultButton(
            text: "ENTRAR",
            press: () {
              Navigator.pushNamed(context, Survey.routeName);
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "ou conectar com",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialButton(
                buttonText: "facebook",
                color: Color.fromRGBO(59, 89, 152, 1),
              ),
              SizedBox(
                width: 20,
              ),
              SocialButton(
                buttonText: "Google",
                color: Color.fromRGBO(235, 67, 53, 1),
              ),
            ],
          )
        ],
      ),
    );
  }
}
