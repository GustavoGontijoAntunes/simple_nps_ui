import 'package:flutter/material.dart';

import '../../components/default_button.dart';
import '../../components/single_line_input_field.dart';
import '../../components/single_line_input_password_field.dart';
import '../login/login.dart';

class RegisterForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SingleLineInputField(
            labelText: "E-MAIL",
          ),
          SingleLineInputPasswordField(
            labelText: "SENHA",
          ),
          SingleLineInputPasswordField(
            labelText: "CONFIRMAR SENHA",
          ),
          SizedBox(
            height: 10,
          ),
          DefaultButton(
            text: "CRIAR",
            press: () {
              Navigator.pushNamed(context, Login.routeName);
            },
          ),
        ],
      ),
    );
  }
}