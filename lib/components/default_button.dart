import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {

  final String? text;
  final Function? press;
  final bool showProgress;

  const DefaultButton({
    Key? key,
    this.text,
    this.press,
    this.showProgress = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 60,
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: kPrimaryColor,
        ),
        onPressed: press as void Function()?,
        child: showProgress
          ? Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.white
              ),
            ),
          )
          : Text(
            text!,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
      ),
    );
  }
}