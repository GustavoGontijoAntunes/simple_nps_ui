import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';

class SingleLineInputField extends StatefulWidget {
  final String labelText;
  String email;
  final List<String> errors = [];

  SingleLineInputField({
    this.labelText = "",
    this.email = ""
  });

  @override
  State<SingleLineInputField> createState() => _SingleLineInputFieldState();
}

class _SingleLineInputFieldState extends State<SingleLineInputField> {
  void addError({required String error}){
    if(!widget.errors.contains(error)){
      setState(() {
        widget.errors.add(error);
      });
    }
  }

  void removeError({required String error}){
    if(widget.errors.contains(error)){
      setState(() {
        widget.errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.labelText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          TextFormField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(40),
            ],
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
            onSaved: (newValue) {
              widget.email = newValue!;
            },
            onChanged: (value){
              if (value.isNotEmpty) {
                removeError(error: kEmailNullError);
              }
              else if(kEmailValidatorRegExp.hasMatch(value)){
                removeError(error: widget.email);
              }

              return null;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kEmailNullError);
                return "";
              }
              else if(!kEmailValidatorRegExp.hasMatch(value)){
                addError(error: kInvalidEmailError);
                return "";
              }

              return null;
            },
          ),
        ],
      ),
    );
  }
}
