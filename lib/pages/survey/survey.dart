import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_nps_ui/constants.dart';
import 'package:simple_nps_ui/pages/survey/finished_survey/finished_survey.dart';
import 'package:simple_nps_ui/pages/survey/info_survey/info_survey.dart';
import 'package:simple_nps_ui/pages/survey/ongoing_survey/ongoing_survey.dart';

import '../../components/alert_dialog_sign_out.dart';

class Survey extends StatefulWidget {
  static String routeName = "/survey";

  @override
  _SurveyState createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  int currentIndex = 0;
  final screens = [
    InfoSurvey(),
    OngoingSurvey(),
    FinishedSurvey(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        alertDialogSignOut(context);
        return false;
      },
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: kPrimaryLightColor,
          type: BottomNavigationBarType.shifting,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          unselectedItemColor: Colors.black,
          selectedItemColor: kPrimaryColor,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.info_sharp,
              ),
              label: "Informações",
              backgroundColor: kPrimaryLightColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.doc_chart_fill,
              ),
              label: "Em Andamento",
              backgroundColor: kPrimaryLightColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.doc_checkmark_fill,
              ),
              label: "Finalizadas",
              backgroundColor: kPrimaryLightColor,
            ),
          ],
        ),
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
      ),
    );
  }
}
