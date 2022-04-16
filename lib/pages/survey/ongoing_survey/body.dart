import 'package:flutter/material.dart';
import 'package:simple_nps_ui/pages/survey/summary/summary.dart';

import '../../../models/survey.dart';
import '../survey_card.dart';

class Body extends StatefulWidget {

  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SurveyCard(surveys: demoOngoingSurveys, route: Summary.routeName),
        ),
      ],
    );
  }
}
