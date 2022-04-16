import 'package:flutter/material.dart';

import '../../../components/alert_dialog_add_survey.dart';
import '../../../components/alert_dialog_sign_out.dart';
import '../../../constants.dart';
import 'body.dart';

class OngoingSurvey extends StatefulWidget {
  const OngoingSurvey({Key? key}) : super(key: key);

  @override
  State<OngoingSurvey> createState() => _OngoingSurveyState();
}

class _OngoingSurveyState extends State<OngoingSurvey> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
          "Pesquisas em Andamento",
        ),
        iconTheme: IconThemeData(
          color: kPrimaryLightColor,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 8,
        child: Icon(
          Icons.add,
        ),
        backgroundColor: kPrimaryColor,
        onPressed: (){
          alertDialogAddSurvey(context, _formKey);
        }
      ),
      body: Body(),
    );
  }
}
