import 'package:flutter/material.dart';

import '../../components/default_button.dart';
import '../../components/single_line_input_field.dart';
import '../recover_password/recover_pasword.dart';

class ForgotPasswordForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SingleLineInputField(
            labelText: "E-MAIL",
          ),
          SizedBox(
            height: 30,
          ),
          DefaultButton(
            text: "ENVIAR",
            press: () {
              Navigator.pushNamed(context, RecoverPassword.routeName);
            },
          ),
        ],
      ),
    );
  }
}
