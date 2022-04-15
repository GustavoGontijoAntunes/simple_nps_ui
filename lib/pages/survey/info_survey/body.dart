import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "O que é NPS?",
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              kTextNps,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            Image.asset(
              "assets/images/Nps-range.png",
              height: size.height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
