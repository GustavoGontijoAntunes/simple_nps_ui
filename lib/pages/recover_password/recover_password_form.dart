import 'package:flutter/material.dart';
import 'package:simple_nps_ui/components/single_line_input_password_field.dart';

import '../../components/default_button.dart';
import '../login/login.dart';

class RecoverPasswordForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SingleLineInputPasswordField(
            labelText: "NOVA SENHA",
          ),
          SingleLineInputPasswordField(
            labelText: "CONFIRMAR NOVA SENHA",
          ),
          SizedBox(
            height: 30,
          ),
          DefaultButton(
            text: "ENVIAR",
            press: () {
              Navigator.pushNamed(context, Login.routeName);
            },
          ),
        ],
      ),
    );
  }
}
