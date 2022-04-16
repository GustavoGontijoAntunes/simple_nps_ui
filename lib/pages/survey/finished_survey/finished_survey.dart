import 'package:flutter/material.dart';

import '../../../components/alert_dialog_sign_out.dart';
import '../../../constants.dart';

import 'body.dart';

class FinishedSurvey extends StatelessWidget {
  static String routeName = "/finishedSurvey";

  const FinishedSurvey({Key? key}) : super(key: key);

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
          "Pesquisas Finalizadas",
        ),
        iconTheme: IconThemeData(
          color: kPrimaryLightColor,
        ),
      ),
      body: Body(),
    );
  }
}
