import 'package:flutter/material.dart';
import 'package:simple_nps_ui/components/default_button.dart';
import 'package:simple_nps_ui/constants.dart';
import 'package:simple_nps_ui/pages/survey/answer_sent/answer_sent.dart';

import '../../../components/alert_dialog_error.dart';

class Body extends StatefulWidget {
  final String title;

  const Body({Key? key, required this.title}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _value = -1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Em uma escala de 0 a 10, qual a\nprobabilidade de você\nrecomendar este estabelecimento\npara um amigo ou conhecido?",
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _optionRadio(context, 0, "0"),
                    _optionRadio(context, 1, "1"),
                    _optionRadio(context, 2, "2"),
                    _optionRadio(context, 3, "3"),
                    _optionRadio(context, 4, "4"),
                    _optionRadio(context, 5, "5"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _optionRadio(context, 6, "6"),
                    _optionRadio(context, 7, "7"),
                    _optionRadio(context, 8, "8"),
                    _optionRadio(context, 9, "9"),
                    _optionRadio(context, 10, "10"),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          DefaultButton(
            text: "ENVIAR",
            press: () {
              if(_value >= 0){
                Navigator.pushNamed(context, AnswerSent.routeName, arguments: {"name": widget.title});
              }
              else{
                alertDialogError(context);
              }
            },
          ),
        ],
      ),
    );
  }

  _optionRadio(BuildContext, int valueRadio, String labelText) {
    return Column(
      children: [
        Radio(
            value: valueRadio,
            groupValue: _value,
            activeColor: kPrimaryColor,
            onChanged: (value) {
              setState(() {
                _value = valueRadio;
              });
            }
        ),
        Text(
          labelText,
          style: TextStyle(
              fontSize: 20
          ),
        ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
