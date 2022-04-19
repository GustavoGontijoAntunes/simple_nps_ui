import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../components/alert_dialog_error.dart';
import '../../components/default_button.dart';
import '../../components/form_error.dart';
import '../../components/social_button.dart';
import '../../constants.dart';
import '../../services/security_api.dart';
import '../forgot_password/forgot_password.dart';
import '../survey/survey.dart';

class LoginForm extends StatefulWidget {

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final List<String> errors = [];
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool _showProgress = false;

  void addError({required String error}){
    if(!errors.contains(error)){
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}){
    if(errors.contains(error)){
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child: Column (
        children: [
          emailTextFormField(),
          passwordFormField(),
          FormError(errors: errors),
          DefaultButton(
            text: "ENTRAR",
            press: () {
              _onClickButton(context);
            },
            showProgress: _showProgress,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "ou conectar com",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialButton(
                buttonText: "facebook",
                color: Color.fromRGBO(59, 89, 152, 1),
              ),
              SizedBox(
                width: 20,
              ),
              SocialButton(
                buttonText: "Google",
                color: Color.fromRGBO(235, 67, 53, 1),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Container emailTextFormField(){
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "E-MAIL",
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
              email = newValue!;
            },
            onChanged: (value){
              if (value.isNotEmpty) {
                removeError(error: kEmailNullError);
              }
              else if(kEmailValidatorRegExp.hasMatch(value)){
                removeError(error: email);
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

  Container passwordFormField(){
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 20,
      ),
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "SENHA",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
            inputFormatters: [
              LengthLimitingTextInputFormatter(30),
            ],
            onSaved: (newValue){
              password = newValue;
            },
            onChanged: (value){
              if (value.isNotEmpty) {
                removeError(error: kPasswordNullError);
              }
              else if(value.length >= 8){
                removeError(error: kShortPasswordError);
              }

              return null;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kPasswordNullError);
                return "";
              }
              else if(value.length < 8){
                addError(error: kShortPasswordError);
                return "";
              }

              return null;
            },
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, ForgotPassword.routeName);
                },
                child: Text(
                  "Esqueceu a senha?",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 15,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Future _onClickButton(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState?.save();

      setState(() {
        _showProgress = true;
      });

      var user = await SecurityApi.login(email!, password!);

      if(user != null) {
        Navigator.pushNamed(context, Survey.routeName);
      }else{
        alertDialogError(context, "Erro", kInvalidLoginError);
      }

      setState(() {
        _showProgress = false;
      });
    }

  }
}
