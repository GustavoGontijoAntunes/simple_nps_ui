import 'package:flutter/material.dart';

import '../../models/survey.dart';
import 'result/result.dart';

class SurveyCard extends StatelessWidget {
  final List<Survey> surveys;
  final String route;

  const SurveyCard({Key? key, required this.surveys, required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: surveys.length,
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, route, arguments: {"name": "${surveys[index].title}"});
          },
          child: Card(
            color: Colors.white24,
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 20
              ),
              child: Text(
                "${surveys[index].title}",
                style: TextStyle(
                fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
