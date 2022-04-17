import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FormError extends StatelessWidget {
  final List<String> errors;

  const FormError({Key? key, required this.errors,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 20,
      ),
      child: Column(
        children: List.generate(
          errors.length, (index) => errorText(error: errors[index]),
        ),
      ),
    );
  }

  Row errorText({required String error}) {
    return Row(
      children: [
        Icon(
          Icons.error,
          color: Colors.red,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          error,
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
