import 'package:flutter/material.dart';

import '../../../models/survey.dart';
import '../result/result.dart';
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
          child: SurveyCard(surveys: demoFinishedSurveys, route: Result.routeName),
        ),
      ],
    );
  }
}
