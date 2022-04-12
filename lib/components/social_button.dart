import 'package:flutter/material.dart';
import 'package:simple_nps_ui/constants.dart';

class SocialButton extends StatelessWidget {
  final String buttonText;
  final Color color;

  SocialButton({
    this.buttonText = "",
    this.color = kPrimaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 60,
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: color,
        ),
        onPressed: () async {},
        child: Text(
          buttonText,
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
