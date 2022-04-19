import 'package:flutter/material.dart';

//colors
const kPrimaryColor = Color.fromRGBO(91, 91, 255, 1);
const kPrimaryLightColor = Color.fromRGBO(255, 255, 255, 1);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [
    Color.fromRGBO(91, 169, 255, 1),
    Color.fromRGBO(91, 91, 255, 1),
  ],
);

//text
const kTextColor = Color.fromRGBO(0, 0, 0, 1);
const kTextAppBarColor = Color.fromRGBO(139, 139, 139, 1);
const kWordsColor = Color(0xFFC2C2B5);
const kIconsColor = Color(0xFF8492A2);
const kGreenColor = Color.fromRGBO(50, 205, 50, 1);

//head
final kHeadingStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

//Error
final RegExp kEmailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Por favor, digite o seu e-mail";
const String kInvalidEmailError = "Por favor, digite um e-mail válido";
const String kPasswordNullError = "Por favor, digite a sua senha";
const String kConfirmPasswordNullError = "Por favor, digite a confirmação de sua senha";
const String kShortPasswordError = "A senha é muito pequena";
const String kMatchPasswordError = "As senhas não são iguais";
const String kInvalidLoginError = "Login inválido";

const kDefaultPadding = 20.0;
final kDefaultShadow = BoxShadow(
  offset: Offset(5, 5),
  blurRadius: 10,
  color: Color(0xFFE9E9E9).withOpacity(0.56),
);

const kTextNps = "O Net Promoter Score é uma metodologia\nde satisfação de clientes desenvolvida para\n" +
                 "avaliar o grau de fidelidade dos clientes de\nqualquer perfil de empresa.\n\n" +
                 "A partir da realização da pesquisa NPS\nfeita através de uma pergunta, o cálculo é\n" +
                 "realizado. Segundo a reposta dada, os\nclientes são classificados em 3 grupos\ndistintos:\n\n" +
                 "1. Promotores (nota 9 ou 10)\n2. Neutros (nota 7 ou 8)\n3. Detratores (nota de 0 a 6)\n\n" +
                 "O grupo 2 (Neutros) é desconsiderado do\ncálculo. Em vista disso, este é realizado:\n\n" +
                 "% CLIENTES PROMOTORES – % CLIENTES\n DETRATORES = NPS\n\nResultado:";