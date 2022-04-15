import 'package:flutter/material.dart';

import '../../models/survey.dart';

class SurveyCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 8,
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return Card(
          color: Colors.black12,
          margin: EdgeInsets.all(10),
        );
      },
    );
  }
}
