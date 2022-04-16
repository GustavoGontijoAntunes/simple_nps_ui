import 'package:flutter/material.dart';

import '../../../components/alert_dialog_sign_out.dart';
import '../../../constants.dart';

import 'body.dart';

class InfoSurvey extends StatelessWidget {
  const InfoSurvey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              alertDialogSignOut(context);
            },
            icon: Text("Sair")
        ),
        backgroundColor: kPrimaryColor,
        title: Text(
          "Informações",
        ),
        iconTheme: IconThemeData(
          color: kPrimaryLightColor,
        ),
      ),
      body: Body(),
    );
  }
}
