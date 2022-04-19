import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../components/alert_dialog_error.dart';
import '../../components/default_button.dart';
import '../../components/form_error.dart';
import '../../constants.dart';
import '../../models/user.dart';
import '../../services/security_api.dart';
import '../login/login.dart';

class RegisterForm extends StatefulWidget {

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final List<String> errors = [];
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? confirm_password;
  bool _showProgress = false;
  User user = new User();

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
    return  Form(
      key: _formKey,
      child: Column(
        children: [
          emailTextFormField(),
          passwordFormField(),
          confirmPasswordFormField(),
          FormError(errors: errors),
          DefaultButton(
            text: "CRIAR",
            press: () {
              _onClickButton(context);
            },
            showProgress: _showProgress,
          ),
        ],
      ),
    );
  }

  Container emailTextFormField(){
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 10,
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
                removeError(error: kInvalidEmailError);
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
        vertical: 10,
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
        ],
      ),
    );
  }

  Container confirmPasswordFormField(){
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 10,
      ),
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "CONFIRMAR SENHA",
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
              confirm_password = newValue;
            },
            onChanged: (value) {
              if (password == confirm_password) {
                removeError(error: kMatchPasswordError);
              }
              else if (value.isNotEmpty){
                removeError(error: kConfirmPasswordNullError);
              }

              return null;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kConfirmPasswordNullError);
                return "";
              }
              else if (password != confirm_password) {
                addError(error: kMatchPasswordError);
                return "";
              }

              return null;
            },
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Future _onClickButton(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      user.email = email;
      user.password = password;

      setState(() {
        _showProgress = true;
      });

      var registro = await SecurityApi.register(user);
      print("registro: $registro");

      if(registro) {
        Navigator.pushNamed(context, Login.routeName);
      } else{
        alertDialogError(context, "Erro", "Cadastro não pôde ser realizado!");
      }

      setState(() {
        _showProgress = false;
      });
    }
  }
}
